   M S B A M L   `   `   `  ����F  BToDo_Pelcak, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ToDo_PelcakToDo_Pelcak  5   	       ToDo_Pelcak.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ToDo_Pelcak     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� $��200px��6   $	��Top=�6#   
���������5      �� 5       j� Stretch$
 Fill=�6    �� ImageSource$� �https://www.kennedy-center.org/globalassets/education/resources-for-educators/classroom-resources/artsedge/media/art-space/art-space-169.jpg��6,   5      �� 5   
   -   5         ��Name$ LabelTextBox��5      $��Task description��6&   $	��Top=�6A   $
��Bold"�6Y   $��20(�6k   
�������$��125,39,-104,0q�6�   �� 5   
   -   5         ��Name$ InputBox��5      $��Center=�6$    �� TextWrapping$
 Wrap=�6A   $	��Top=�6U   $��200px��6m   $��20��6{   $��0,47,0,0q�6�   �� 5   
   -   5        $ LabelCheckBox��5      $��Finished��6'   $	��Top=�6:   $
��Bold"�6R   $��20(�6d   
�������$��199,65,42,0q�6�   �� 5   
   -   5         ��Name$ FinishedCheckBox��5      $
��Left=�6-   $	��Top=�6H   $��
299,76,0,0q�6`   �� 5   
   -   5        $ LabelComboBox��5      $��Priority��6'   $	��Top=�6:   $
��Bold"�6R   $��20(�6d   
�������$��205,93,-185,0q�6�   �� 5   
   -   5         ��Name$ PrioComboBox��5      $
��Left=�6)   $	��Top=�6D   $��300,100,0,0q�6\   .@�5      �� $	��Low��6    �� 
IsSelected$
 True��6)   �� 5      $��Medium��6   �� 5      $
��High��6   5      �� 5   
   -   5        	 ��Name$	 	BtnCreate��5      $��create��6$   $
��Left=�65   $	��Top=�6P   $��299,160,0,0q�6h   
�������
���p�
�������$
��bold"�6�   6�   �� 5   
   -   5        $	 BtnEdit��5      $
��Edit��6"   $
��Left=�61   $	��Top=�6L   $��343,160,0,0q�6d   
�������
���p�
�������$
��bold"�6�   6�   �� 5   
   -	   5        $	 	BtnDelete��5      $��Delete��6$   $
��Left=�65   $	��Top=�6P   $��374,160,0,0q�6h   
�������
���p�
�������$
��bold"�6�   6�   �� 5   
   -
   5        $	 BtnDeleteFinished��5      $��DeleteFinshed��6,   $
��Left=�6D   $	��Top=�6_   $��419,160,0,0q�6w   
�������
���p�
�������$
��bold"�6�   6�   &   System.Windows.Controls.DataGrid  5!   
   -   5        
  Name$
 DataGrindTasks��5!         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6+      
IsReadOnly$
 True��6;   $��	0,200,0,0q�6e   
���p�
����  �
�������   HorizontalGridLinesBrush
 ��  �   VerticalGridLinesBrush
 ��  �   RowBackground
 ��  �   	RowHeight$ 35Q�6     AlternatingRowBackground
 ��  ���6M   ��    ColumnHeaderStyle 5"      �� 5#       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5$      ��  �� Property � �� �� Value
 ��  �63   �� 5%       � ��
 �����63   �� 5&       � ��
 ��  �64   5'      5)      5*      5+      