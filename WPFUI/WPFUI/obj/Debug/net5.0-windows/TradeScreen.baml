   M S B A M L   `   `   `  ����N  JSOSCSRPG.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModelsSOSCSRPG.ViewModels  5   	   	 WPFUI   WPFUI.TradeScreen   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U
viewModels>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModels     5   	     � WindowStartupLocation$  CenterOwner=�5	   	   $
��11pt(�5
   	    � Title$ Trade Screen��5   	   $	��480��6   $	��640��6+   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��2��5      $��Center=�5      ��5      �� *CurrentTrader.Name+�� 5   
   $��1��6   $��0��6   $��Center=�5       $��Your Inventory��5!      �� 5"   
   $��1��6   $��1��6   $��Center=�5#      $��Trader's Inventory��5$      &   System.Windows.Controls.DataGrid  5&   
   $��2��6   $��0��6    $��10q�5'         AutoGenerateColumns$ False��5)         HeadersVisibility$ Column=�5*         CanUserAddRows$ False��5+         CanUserDeleteRows$ False��5,      "   VerticalScrollBarVisibility$
 Auto=�5-      ��5(      �� **(CurrentPlayer.Inventory.GroupedInventory+	   Columns	 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Description��6%      
IsReadOnly$
 True��51   %      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 52   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 53   %   �� *	Item.Name+  54      $	
 Qty��6%   $
 True��55   %   $
 Auto 56   %    57   %   �� *
Quantity+  58      $
 Price��6%   $
 True��59   %   $
 Auto 5:   %    5;   %   �� *
Item.Price+4  .System.Windows.Controls.DataGridTemplateColumn  5<         MinWidth$ 75Q�6)      CellTemplate 5=      �� 5>      .R�5?      �� -   5        $��55��5@   %   $��Sell 1��5A   %   5B      5D      5G        5I   
   $��2��6   $��1��6    $��10q�5J      $ False��5L      $ Column=�5M      $ False��5N      $ False��5O      $
 Auto=�5P      ��5K      �� **(CurrentTrader.Inventory.GroupedInventory+	 5R        5S      $
 Description��6%   $
 True��5T   %   $ * 5U   %    5V   %   �� *	Item.Name+  5W      $	
 Qty��6%   $
 True��5X   %   $
 Auto 5Y   %    5Z   %   �� *
Quantity+  5[      $
 Price��6%   $
 True��5\   %   $
 Auto 5]   %    5^   %   �� *
Item.Price+  5_      $ 75Q�6)    5`      �� 5a      .R�5b      �� -   5        $��55��5c   %   $��Buy 1��5d   %   5e      5g      5j      �� 5l   
   -   5        $��3��5l      $��1��6   $��Right=�5m      $��75��5n      $��Close��5o      5p      5q      5r      