   M S B A M L   `   `   `  ����B  >MovieDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MovieDB.MVVM.ViewModelMovieDB.MVVM.ViewModel  5   	   !clr-namespace:MovieDBMovieDB  5   	       MovieDB.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :	viewModel$clr-namespace:MovieDB.MVVM.ViewModel     5   	   'localclr-namespace:MovieDB     5   	     � Title$  
MainWindow��5	   	   $	��600��6   $	��920��6)    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      *  $MovieDB.MVVM.ViewModel.MainViewModel  5   
   .��5      �� ���#3E6B66 �� CornerRadius$ 20��6"   ._�5   
   �  � RowDefinitions 5      �� 5      $��80 �6    �� 5       � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      .+�5      �� $��MOVIE DB��6   $��Center=�5      $
��Left=�5      
�������$��25(�5       $��20,0,0,0q�5!      �� 5#      $��1��6   .+�5$      	� $
��Home��6   $��50��5%      
�������$��16(�5'         MenuButtonStyle#��[  5(       d� 	IsChecked$
 TrueY�5)      ��5*      �� *HomeViewCommand+	� 5+      $��
Movie List��6   $��50��5,      
�������$��16(�5.      #��[  5/      ��50      �� *MovieViewCommand+51      �� 52      $��1��6   $��1��53      $��10q�54      ��55      �� *CurrentView+56      58      59      