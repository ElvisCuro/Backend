from django.urls import path

from . import views

urlpatterns = [
    path('compra/', views.TblCompraView.as_view(), name='compra-list'),
    path('compra/<int:compra_id>/', views.TblCompraDetailView.as_view(), name='compra-detail'),
    
    path('consola/', views.TblConsolaView.as_view(), name='consola-list'),
    path('consola/<int:consola_id>/', views.TblConsolaDetailView.as_view(), name='consola-detail'),
    
    path('usuario/', views.TblUsuarioView.as_view(), name='usuario-list'),
    path('usuario/<int:usuario_id>/', views.TblUsuarioDetailView.as_view(), name='usuario-detail'),
    
    path('videojuego/', views.TblVideojuegoView.as_view(), name='videojuego-list'),
    path('videojuego/<int:videojuego_id>/', views.TblVideojuegoDetailView.as_view(), name='videojuego-detail'),
    
    path('videojuego-has-consola/', views.TblVideojuegoHasTblConsolaView.as_view(), name='videojuego-has-consola-list'),
    path('videojuego-has-consola/<int:videojuego_has_consola_id>/', views.TblVideojuegoHasTblConsolaDetailView.as_view(), name='videojuego-has-consola-detail'),
]