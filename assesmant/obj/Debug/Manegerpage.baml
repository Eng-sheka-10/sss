   M S B A M L   `   `   `  ����D  @assesmant, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:assesmant	assesmant  5   	       assesmant.Manegerpage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:assesmant     5   	     � Title$  Manegerpage��5   	   $	��450��6   $	��800��6*   .��5	      � .+�5
   
   �� -   5         ��Name$ taskidmaneger��5
      $��91,22,519,364q�6)   6B   �� 5   
   $��	TaskId : ��6   $��10,0,714,375q�6$   $��20(�6:   $��Bottom=�6H   6e   �� 5   
   -   5        $ taskempnamemaneger��5      $��139,83,471,303q�6.   �� 5   
   $��Emp_name : ��6   $��10,0,666,311q�6&   $��20(�6<   $��Bottom=�6J   $��35��6e   �� 5   
   -   5        $ tasktitlemaneger_��5      $��91,148,519,238q�6-   �� 5   
   $��Title : ��6   $��10,0,714,249q�6#   $��20(�69   $��Bottom=�6G   �� 5   
   -   5        $ taskdesmaneger��5      $��574,75,36,311q�6*   �� 5   
   $��Description : ��6   $��436,0,231,322q�6)   $��20(�6@   $��Bottom=�6N   �� 5   
   $��
Statues : ��6   $��493,0,231,387q�6%   $��20(�6<   $��Bottom=�6J   �� 5   
   -   5         ��Name$ cmbstatuesmaneger��5   *   $��574,13,17,384q�6   .@�5      �� $��
In progres��6   62   �� 5      $��Pading��6   6.   �� 5      $��	Completed��6   61   5      �� 5   
   -   5        $	��ADD��5      $��302,158,376,232q�6   6O   �� 5   
   -   5        $
��Edit��5      $��493,158,185,232q�6    69   �� 5   
   -   5        $��Remove��5      $��661,158,17,232q�6"   6:   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ 	dgmaneger��5   /      AutoGenerateColumns .  $��
0,277,0,10q�6B      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *taskid+  5      $ Emp-name��6%    67   �� *users.username+  5      $ Title��6%    64   �� *	tasktitle+  5       $ Descreption��6%    6:   �� *	taskdes+  5!      $ Statues��6%    66   �� *
taskstat+5#      5$      5%      