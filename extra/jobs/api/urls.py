from django.urls import path

from . import views

urlpatterns = [
    path('categoria/', views.CategoriaView.as_view(), name='categoria-list'),
    path('categoria/<int:categoria_id>/', views.CategoriaDetailView.as_view(), name='categoria-detail'),
    path('empresa/', views.EmpresaView.as_view(), name='empresa-list'),
    path('empresa/<int:empresa_id>/', views.EmpresaDetailView.as_view(), name='empresa-detail'),
    path('modalidad/', views.ModalidadView.as_view(), name='modalidad-list'),
    path('modalidad/<int:modalidad_id>/', views.ModalidadDetailView.as_view(), name='modalidad-detail'),
    path('experiencia/', views.ExperienciaView.as_view(), name='experiencia-list'),
    path('experiencia/<int:experiencia_id>/', views.ExperienciaDetailView.as_view(), name='experiencia-detail'),
    path('jornada/', views.JornadaView.as_view(), name='jornada-list'),
    path('jornada/<int:jornada_id>/', views.JornadaDetailView.as_view(), name='jornada-detail'),
    # OFERTA
    path('oferta/', views.OfertaView.as_view(), name='oferta-list'),
    path('oferta/<int:oferta_id>/', views.OfertaDetailView.as_view(), name='oferta-detail'),
    path('oferta-postulante/', views.OfertaPostulanteView.as_view(), name='oferta-postulante-list'),
    path('oferta-postulante/<int:oferta_postulante_id>/', views.OfertaPostulanteDetailView.as_view(), name='oferta-postulante-detail'),
    path('oferta-etapa/', views.OfertaEtapaView.as_view(), name='oferta-etapa-list'),
    path('oferta-etapa/<int:oferta_etapa_id>/', views.OfertaEtapaDetailView.as_view(), name='oferta-etapa-detail'),
    # POSTULANTE
    path('postulante/', views.PostulanteView.as_view(), name='postulante-list'),
    path('postulante/<int:postulante_id>/', views.PostulanteDetailView.as_view(), name='postulante-detail'),
    path('postulante-estudio/', views.PostulanteEstudioView.as_view(), name='postulante-estudio-list'),
    path('postulante-estudio/<int:postulante_estudio_id>/', views.PostulanteEstudioDetailView.as_view(), name='postulante-estudio-detail'),
    path('postulante-experiencia/', views.PostulanteExperienciaView.as_view(), name='postulante-experiencia-list'),
    path('postulante-experiencia/<int:postulante_experiencia_id>/', views.PostulanteExperienciaDetailView.as_view(), name='postulante-experiencia-detail'),
]
