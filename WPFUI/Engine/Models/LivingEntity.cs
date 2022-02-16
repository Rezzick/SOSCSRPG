﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using Newtonsoft.Json;
using Engine.Services;

namespace Engine.Models
{
    public abstract class LivingEntity : INotifyPropertyChanged
    {
        private string _name;
        private int _currentHitPoints;
        private int _maximumHitPoints;
        private int _gold;
        private int _level;
        private GameItem _currentWeapon;
        private GameItem _currentConsumable;
        private Inventory _inventory;

        public event PropertyChangedEventHandler PropertyChanged;

        public ObservableCollection<PlayerAttribute> Attributes { get; set; } =
            new ObservableCollection<PlayerAttribute>();

        public string Name
        {
            get => _name;
            private set
            {
                _name = value;
            }
        }

        public int CurrentHitPoints
        {
            get => _currentHitPoints;
            private set
            {
                _currentHitPoints = value;
            }
        }

        public int MaximumHitPoints
        {
            get => _maximumHitPoints;
            protected set
            {
                _maximumHitPoints = value;
            }
        }

        public int Gold
        {
            get => _gold;
            private set
            {
                _gold = value;
            }
        }

        public int Level
        {
            get => _level;
            protected set
            {
                _level = value;
            }
        }

        public Inventory Inventory
        {
            get => _inventory;
            private set
            {
                _inventory = value;
            }
        }

        public GameItem CurrentWeapon
        {
            get => _currentWeapon;
            set
            {
                if (_currentWeapon != null)
                {
                    _currentWeapon.Action.OnActionPerformed -= RaiseActionPerformedEvent;
                }

                _currentWeapon = value;

                if (_currentWeapon != null)
                {
                    _currentWeapon.Action.OnActionPerformed += RaiseActionPerformedEvent;
                }

            }
        }

        public GameItem CurrentConsumable
        {
            get => _currentConsumable;
            set
            {
                if (_currentConsumable != null)
                {
                    _currentConsumable.Action.OnActionPerformed -= RaiseActionPerformedEvent;
                }

                _currentConsumable = value;

                if (_currentConsumable != null)
                {
                    _currentConsumable.Action.OnActionPerformed += RaiseActionPerformedEvent;
                }

            }
        }

        [JsonIgnore]
        public bool IsAlive => CurrentHitPoints > 0;
        [JsonIgnore]
        public bool IsDead => !IsAlive;

        public event EventHandler<string> OnActionPerformed;
        public event EventHandler OnKilled;

        protected LivingEntity(string name, int maximumHitPoints, int currentHitPoints,
                               IEnumerable<PlayerAttribute> attributes, int gold, int level = 1)
        {
            Name = name;
            MaximumHitPoints = maximumHitPoints;
            CurrentHitPoints = currentHitPoints;
            Gold = gold;
            Level = level;

            foreach (PlayerAttribute attribute in attributes)
            {
                Attributes.Add(attribute);
            }

            Inventory = new Inventory();
        }

        public void UseCurrentWeaponOn(LivingEntity target)
        {
            CurrentWeapon.PerformAction(this, target);
        }

        public void UseCurrentConsumable()
        {
            CurrentConsumable.PerformAction(this, this);
            RemoveItemFromInventory(CurrentConsumable);
        }

        public void TakeDamage(int hitPointsOfDamage)
        {
            CurrentHitPoints -= hitPointsOfDamage;
            
            if (IsDead)
            {
                CurrentHitPoints = 0;
                RaiseOnKilledEvent();
            }
        }

        public void Heal(int hitPointsToHeal)
        {
            CurrentHitPoints += hitPointsToHeal;

            if (CurrentHitPoints > MaximumHitPoints)
            {
                CurrentHitPoints = MaximumHitPoints;
            }
        }

        public void CompletelyHeal()
        {
            CurrentHitPoints = MaximumHitPoints;
        }

        public void ReceiveGold(int amountOfGold)
        {
            Gold += amountOfGold;
        }

        public void SpendGold(int amountOfGold)
        {
            if(amountOfGold > Gold)
            {
                throw new ArgumentOutOfRangeException($"{Name} only has {Gold} gold and cannot spend {amountOfGold} gold.");
            }

            Gold -= amountOfGold;
        }

        public void AddItemToInventory(GameItem item)
        {
            Inventory = Inventory.AddItem(item);
        }

        public void RemoveItemFromInventory(GameItem item)
        {
            Inventory = Inventory.RemoveItem(item);
        }

        public void RemoveItemsFromInventory(List<ItemQuantity> itemQuantities)
        {
            Inventory = Inventory.RemoveItems(itemQuantities);
        }

        private void RaiseOnKilledEvent()
        {
            OnKilled?.Invoke(this, new System.EventArgs());
        }

        private void RaiseActionPerformedEvent(object sender, string result)
        {
            OnActionPerformed?.Invoke(this, result);
        }
    }
}
