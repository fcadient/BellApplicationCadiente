   M S B A M L   `   `   `  ����T  P301098663(cadiente)_Test1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:_301098663_cadiente__Test1_301098663_cadiente__Test1  5   	   +    %_301098663_cadiente__Test1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:_301098663_cadiente__Test1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         covidViewSource��%!   &	        �� 5
   
   5      5      .��5      �  � DataContext# [  6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ covidDataGrid��5      $��23,66,24,21q�6*      AutoGenerateColumns .     EnableRowVirtualization .     RowDetailsVisibilityMode$ VisibleWhenSelected=�6{   ��6�   �� *
covidcases+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        EmployeeNameColumn��,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 5   A   	   Header$	 Employee Name��6O   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6f   �� *EmployeeName+5        5      -   5        departmentColumn��$	 
Department��5   ^   $
 Auto 6r   
 6?   �� *
Department+6�   4  .System.Windows.Controls.DataGridTemplateColumn  5      -   5        
dateColumn��$	 Confirmed Date��5   =   $
 Auto 6U      CellTemplate 5      �� 5      .R�5      (  "System.Windows.Controls.DatePicker    Name$ datePickerObject��6)      SelectedDate 6C   �� *Date+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnDataErrors . 5      5      5        5      -   5        ProjectNameColumn��$
 Auto 5   @   $	 Project Name��6N   
 6d   �� *ProjectName+5        5       -   5        DescriptionColumn��$
 Auto 5    @   $	 Description��6N   
 6c   �� *Description+5!      5#      �� 5$   
   -   5         ��Name$ countryLabel��5$      $��Department:��6&   $
��Left=�6<   $��	39,23,0,0q�6W   $	��Top=�6j   �� 5&   
   -   5         ��Name$ 	countryCb��5&      $
��Left=�6&   $��
118,27,0,0q�6A   $	��Top=�6U   $	��120��6m   ��5'      �� 5(      .R�5)      ��  �� Orientation$ 
Horizontal=�6!   .+�5*      �� $��10 0 0 0q�6$   ��66   �� *
Department+5+      5,      5.      �� 5/   
   -	   5         ��Name$ 	searchBtn��5/      $��Search��6$   $
��Left=�65   $��
394,26,0,0q�6P   $	��Top=�6d   $��75��6|   6�   �� 50   
   -
   5        $ 
displayBtn��50      $��Display All Data��6%   $
��Left=�6@   $��
504,27,0,0q�6[   $	��Top=�6o   $��94��6�   6�   51      52      