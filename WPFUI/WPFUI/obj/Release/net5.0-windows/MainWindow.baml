   M S B A M L   `   `   `  ����   SOSCSRPG.ViewModelsV>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModelsSOSCSRPG.ViewModels   WPFUI_ae3cbkxh_wpftmp   WPFUI.MainWindow   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U
viewModels>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModels     -   $
��11pt(�$	��768��$
��1024��  � Title  �� *GameDetails.Title+ � 	Resources    BooleanToVisibility��%   &	        �� .���  � RowDefinitions �� $
��Auto ��� $��* ��� $	��225 � � ColumnDefinitions �� $	��250 ��� $��* �.+�o� $��0��$��0��$��2��$
��11pt(�
�������.@�m� $
��File��.@�m� -   $��New Game��m� -   $��	Save Game���� m� -   $
��Exit��m� $
��Help��.@�m� $
��Help��${�False���� m� $��About��${�False��� $��1��$��0��
������ �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��Name:���� $��0��$��1������ *CurrentPlayer.Name+�� $��1��$��0��$��Hit points:���� $��1��$��1������ * CurrentPlayer.CurrentHitPoints+�� $��2��$��0��$��Gold:���� $��2��$��1������ *CurrentPlayer.Gold+�� $��3��$��0��$	��XP:���� $��3��$��1������ * CurrentPlayer.ExperiencePoints+�� $��4��$��0��$��Level:���� $��4��$��1������ *CurrentPlayer.Level+�� $��5��$��0��$��2��
������$��0q� � IsSharedSizeScope$
 True������ *CurrentPlayer.Attributes+���� .R���  �� Orientation$ 
Horizontal=�.+��  ��  z� SharedSizeGroup$ Description��.+��� $
��Left=�$	��100������ *DisplayName+�  �� $ ModifiedValue��.+��� $��Right=����� *ModifiedValue+� $��1��$��1��
������� �� $��* ��� $��* � �� $��3* ��� $��2* �.+��� $��0��$��0��$��2��
�������$��1q�._��� -    ��Name$ GameMessages��
�������" �� VerticalScrollBarVisibility$
 Auto=� 	 �� 
TargetType
 �� Property �� Value��%3   'J�       �� "	 J�.��� 
 �@��Margin$ 0q��� $��0��$��1��
�������$��1q�._�� $��3q� �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��Center=����� *CurrentLocation.Name+�� $��1��$��Center=�$��Center=�$	��125��$	��125������ *CurrentLocation.ImageName+  FileToBitmapConverter �� 	Converter# [ �� $��2��$��Center=�$
��Wrap=����� *CurrentLocation.Description+�� $��1��$��1��
�������$��1q�._��  �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��Center=�$
��Auto������ *CurrentMonster.Name+�� $��1��$��Center=�$��Center=�$	��125��$	��125������ *CurrentMonster.ImageName+# [ �� $��2��$��Center=�$ 
Horizontal=�y��� *
HasMonster+# [  .+��� Current Hit Points:�� ���� *!CurrentMonster.CurrentHitPoints+� $��2��$��0��
�������.+��� -    ��Name$ PlayerDataTabControl��.@��� -    ��Name$ InventoryTabItem��$��	Inventory��.��&   System.Windows.Controls.DataGrid     AutoGenerateColumns$ False��   HeadersVisibility$ Column=����� **(CurrentPlayer.Inventory.GroupedInventory+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Description��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	Item.Name+ �� Mode$ OneWay=�  $	 Qty��   
IsReadOnly$
 True��$
 Auto  �� *
Quantity+$ OneWay=�  $ Price��$
 Auto  �� *
Item.Price+$ OneWay=��� -   $ QuestsTabItem��$��Quests��.��  $ False��$ Column=����� *CurrentPlayer.Quests+   $
 Name��$ *  �� *PlayerQuest.Name+$ OneWay=�   	CellStyle �� *  $System.Windows.Controls.DataGridCell"	  .��� 
 �@�ToolTip �� *PlayerQuest.ToolTipContents+  $ Done?��$
 Auto  �� *IsCompleted+$ OneWay=��� -	   $ RecipesTabItem��$��Recipes��.��  $ False��$ Column=����� *CurrentPlayer.Recipes+   $
 Name��$ *  �� *Name+$ OneWay=� �� "	  .��� 
 �@�ToolTip �� *ToolTipContents+4  .System.Windows.Controls.DataGridTemplateColumn     MinWidth$ 75Q�   CellTemplate �� .R��� -
   $��55��$��Craft��� $��2��$��1��
������� �� $��* � �� $��* ��� $	��255 �.+�� $��0��$��0��$��Center=�$��Center=� �� $
��Auto ��� $
��Auto � �� $	��150 ��� $��10 ��� $��50 �.+��� $��0��$��0�� �� DisplayMemberPath$
 Name��y��� *
HasMonster+# [  ���� *!CurrentPlayer.Inventory.Weapons+ �� SelectedItem �� *CurrentPlayer.CurrentWeapon+�� -   $��0��$��2��$	��Use��y��� *
HasMonster+# [  �� $��1��$��0��$
 Name��y��� *'%CurrentPlayer.Inventory.HasConsumable+# [  ���� *%#CurrentPlayer.Inventory.Consumables+ �� *!CurrentPlayer.CurrentConsumable+�� -   $��1��$��2��$	��Use��y��� *'%CurrentPlayer.Inventory.HasConsumable+# [  � $��0��$��1�� �� $��* ��� $��* ��� $��* � �� $��* ��� $��* ��� $��* �.+��� -   $��0��$��1��$��25��$��65��$��10q�$��North��y��� *HasLocationToNorth+# [  �� -   $��1��$��0��$��25��$��65��$��10q�$
��West��y��� *HasLocationToWest+# [  �� -   $��1��$��1��$��25��$��65��$��10q�$��Trade��y��� *	HasTrader+# [  �� -   $��1��$��2��$��25��$��65��$��10q�$
��East��y��� *HasLocationToEast+# [  �� -   $��2��$��1��$��25��$��65��$��10q�$��South��y��� *HasLocationToSouth+# [  