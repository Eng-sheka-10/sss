   M S B A M L   `   `   `  ����D  @assesmant, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:assesmant	assesmant  5   	       assesmant.userpage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:assesmant     5   	     � Title$  userpage��5   	   $	��450��6   $	��800��6'   .��5	      � .+�5
   
   �� -   5         ��Name$ Emp_name��5
   "   $��Empname��6   $��291,10,362,374q�64   $��24(�6L   $��Algerian)�6Z   $
��Bold"�6p   6�   �� 5   
   $��In progress / Pending��6   $��0,35,514,355q�60   $��24(�6F   $��Times New Roman)�6T   $
��Bold"�6q   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dginprogress��5   /      AutoGenerateColumns .  $��
0,84,0,246q�6E      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *taskid+6N     5      $ Title��6%    64   �� *	tasktitle+6T     5      $ Descreption��6%    6:   �� *	taskdes+6X     5      $ Statues��6%    66   �� *
taskstat+6U   5      �� 5   
   $��TaskId :��6   $��0,192,710,204q�6#   $��22(�6:   $��Times New Roman)�6H   6g   �� 5   
   -   5         ��Name$ taskiduserpage��5      $��90,190,530,202q�6*   6D   �� 5   
   $��	Statues :��6   $��0,192,419,204q�6$   $��Right=�6;   $��22(�6W   $��Times New Roman)�6e   $��83��6�   6�   �� 5   
   -   5         ��Name$ 
cmbstatues��5      $��400,201,182,201q�6'   .@�5      �� $��
In progres��6   62   �� 5      $��Pading��6   6.   �� 5      $��	Completed��6   61   5      �� 5   
   -   5        $��666,189,10,186q�5      $
��Done��6)   $��Comic Sans MS)�68   $��36(�6S   6x     5   
   -   5        $ dgcompleted��5   /    .  $��
0,277,0,10q�6D    5        5      $ Id��6%    61   �� *taskid+  5       $ Title��6%    64   �� *	tasktitle+  5!      $ Descreption��6%    6:   �� *	taskdes+  5"      $ Statues��6%    66   �� *
taskstat+5$      �� 5%   
   $��	Completed��6   $��0,233,514,157q�6$   $��24(�6;   $��Times New Roman)�6I   $
��Bold"�6f   5+      5,      