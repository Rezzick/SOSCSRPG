   M S B A M L   `   `   `  ����   SOSCSRPG.ViewModelsV>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModelsSOSCSRPG.ViewModels   WPFUI_ae3cbkxh_wpftmp   WPFUI.TradeScreen   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U
viewModels>clr-namespace:SOSCSRPG.ViewModels;assembly=SOSCSRPG.ViewModels       � WindowStartupLocation$  CenterOwner=�$
��11pt(� � Title$ Trade Screen��$	��480��$	��640��.��� $��10q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto � � ColumnDefinitions �� $��* ��� $��* �.+��� $��0��$��0��$��2��$��Center=����� *CurrentTrader.Name+�� $��1��$��0��$��Center=�$��Your Inventory���� $��1��$��1��$��Center=�$��Trader's Inventory��&   System.Windows.Controls.DataGrid  $��2��$��0��$��10q�   AutoGenerateColumns$ False��   HeadersVisibility$ Column=�   CanUserAddRows$ False��   CanUserDeleteRows$ False��"   VerticalScrollBarVisibility$
 Auto=����� **(CurrentPlayer.Inventory.GroupedInventory+	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   Header$
 Description��   
IsReadOnly$
 True��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	Item.Name+  $	
 Qty��$
 True��$
 Auto  �� *
Quantity+  $
 Price��$
 True��$
 Auto  �� *
Item.Price+4  .System.Windows.Controls.DataGridTemplateColumn     MinWidth$ 75Q�   CellTemplate �� .R��� -   $��55��$��Sell 1��  $��2��$��1��$��10q�$ False��$ Column=�$ False��$ False��$
 Auto=����� **(CurrentTrader.Inventory.GroupedInventory+	   $
 Description��$
 True��$ *  �� *	Item.Name+  $	
 Qty��$
 True��$
 Auto  �� *
Quantity+  $
 Price��$
 True��$
 Auto  �� *
Item.Price+  $ 75Q� �� .R��� -   $��55��$��Buy 1���� -   $��3��$��1��$��Right=�$��75��$��Close��