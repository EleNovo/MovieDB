using System;
using System.Collections.Generic;
using System.Text;

namespace MovieDB.MVVM.ViewModel
{
    class MainViewModel : ObservableObject
    {
        public RelayCommand HomeViewCommand { get; set; }
        public RelayCommand MovieViewCommand { get; set; }

        public HomeViewModel HomeVM { get; set; }
        public MovieListViewModel MovieVM { get; set; }

        private object _currentView;

        public object CurrentView
        {
            get { return _currentView; }
            set 
            {
                _currentView = value;
                OnPropertyChanged();
            }
                
        }
        public MainViewModel()
        {
            HomeVM = new HomeViewModel();
            MovieVM = new MovieListViewModel();
            CurrentView = HomeVM;

            HomeViewCommand = new RelayCommand(o => 
            {
                CurrentView = HomeVM;
            });

            MovieViewCommand = new RelayCommand(o =>
            {
                CurrentView = MovieVM;
            });
        }
    }
}
