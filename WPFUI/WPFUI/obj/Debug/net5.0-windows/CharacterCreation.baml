   M S B A M L   `   `   `  ����@  <WPFUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WPFUIWPFUI  5   	   N JSOSCSRPG.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModelsSOSCSRPG.ViewModels 5   	       WPFUI.CharacterCreation   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:WPFUI     5   	   U
viewModels>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModels     5   	   $
��11pt(�5
   	   $	��400��5   -   $	��400��6:     � Title  6	   �� *GameDetails.Title+.��5      � $��10,10,10,10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��2��5      $
��Bold"�5      $��Center=�5      $��Create a new character��5      �� 5!   
   $��1��6   $��0��6   $
��Bold"�5"      $��Name:��5#      �� 5$   
   $��1��6   $��1��6   $	��250��5%      $
��Left=�5&      ��5'      �� *Name+�� 5)   
   $��2��6   $��0��6   $
��Bold"�5*      $��Race:��5+      y�5,      �� *
HasRaces+    BooleanToVisibilityConverter �� 	Converter# [  �� 5-   
   -   5        $��2��5-      $��1��6    $	��250��5.      $
��Left=�5/       �� DisplayMemberPath$ DisplayName��51      ��50      �� *GameDetails.Races+ �� SelectedItem 52      �� *SelectedRace+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�y�54      �� *
HasRaces+# [  &   System.Windows.Controls.DataGrid  56   
   $��3��6   $��0��6    $��2��57         AutoGenerateColumns$ False��59      	   CanUserAddRows$	 False��5:      
   CanUserDeleteRows$
 False��5;         HeadersVisibility$ Column=�5<      ��58      �� *PlayerAttributes+   Columns 5>      0  *System.Windows.Controls.DataGridTextColumn  5?      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Attribute��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 5A   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5@   %   �� *DisplayName+5A   %     5B      $ Value��6%    5C   %   �� *	BaseValue+  5D      $ Modified��6%    5E   %   �� *ModifiedValue+   
Visibility 5F   %   �� *HasRaceAttributeModifiers+# [  5J      � 5L   
   $��4��6   $��0��6   $��2��5M       5N      �� 5O      $
��Auto �6     5Q      �� 5R      $��* �6#   �� 5S      $��10 �6#   �� 5T      $��* �6#   .+�5W      �� -   5        $��0��5W      $��0��6"   $��0,5,0,5q�5X      $��Center=�5Y      $	��125��5Z      $��Roll new player��5[      5\      �� 5^      -   5        $��0��5^      $��2��6"   $��0,5,0,5q�5_      $��Center=�5`      $	��125��5a      $��Use this player��5b      5c      5e      5g      5i      