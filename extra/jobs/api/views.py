from rest_framework import generics

from.models import(
    TblEmpresa,
    TblCategoria,
    TblExperiencia,
    TblJornada,
    TblModalidad,
    TblOferta,
    TblOfertaPostulante,
    TblOfertaEtapa,
    TblPostulante,
    TblPostulanteEstudio,
    TblPostulanteExperiencia
)

from.serializers import(
    CategoriaSerializer,
    EmpresaSerializer,
    ModalidadSerializer,
    ExperienciaSerializer,
    JornadaSerializer,
    OfertaSerializer,
    OfertaPostulanteSerializer,
    OfertaEtapaSerializer,
    PostulanteEstudioSerializer,
    PostulanteExperienciaSerializer,
    PostulanteSerializer
)

class CategoriaView(generics.ListCreateAPIView):
    queryset = TblCategoria.objects.all()
    serializer_class = CategoriaSerializer

class CategoriaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblCategoria.objects.all()
    lookup_url_kwarg = 'categoria_id'
    serializer_class= CategoriaSerializer

class EmpresaView(generics.ListCreateAPIView):
    queryset = TblEmpresa.objects.all()
    serializer_class = EmpresaSerializer

class EmpresaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblEmpresa.objects.all()
    lookup_url_kwarg = 'empresa_id'
    serializer_class= EmpresaSerializer

class ModalidadView(generics.ListCreateAPIView):
    queryset = TblModalidad.objects.all()
    serializer_class = ModalidadSerializer

class ModalidadDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblModalidad.objects.all()
    lookup_url_kwarg = 'modalidad_id'
    serializer_class= ModalidadSerializer

class ExperienciaView(generics.ListCreateAPIView):
    queryset = TblExperiencia.objects.all()
    serializer_class = ExperienciaSerializer

class ExperienciaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblExperiencia.objects.all()
    lookup_url_kwarg = 'experiencia_id'
    serializer_class= ExperienciaSerializer

class JornadaView(generics.ListCreateAPIView):
    queryset = TblJornada.objects.all()
    serializer_class = JornadaSerializer

class JornadaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblJornada.objects.all()
    lookup_url_kwarg = 'jornada_id'
    serializer_class = JornadaSerializer

#OFERTA
class OfertaView(generics.ListCreateAPIView):
    queryset = TblOferta.objects.all()
    serializer_class = OfertaSerializer

class OfertaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblOferta.objects.all()
    lookup_url_kwarg = 'oferta_id'
    serializer_class = OfertaSerializer

class OfertaPostulanteView(generics.ListCreateAPIView):
    queryset = TblOfertaPostulante.objects.all()
    serializer_class = OfertaPostulanteSerializer

class OfertaPostulanteDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblOfertaPostulante.objects.all()
    lookup_url_kwarg = 'oferta_postulante_id'
    serializer_class = OfertaPostulanteSerializer

class OfertaEtapaView(generics.ListCreateAPIView):
    queryset = TblOfertaEtapa.objects.all()
    serializer_class = OfertaEtapaSerializer

class OfertaEtapaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblOfertaEtapa.objects.all()
    lookup_url_kwarg = 'oferta_etapa_id'
    serializer_class = OfertaEtapaSerializer

#POSTULANTE
class PostulanteView(generics.ListCreateAPIView):
    queryset = TblPostulante.objects.all()
    serializer_class = PostulanteSerializer

class PostulanteDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblPostulante.objects.all()
    lookup_url_kwarg = 'postulante_id'
    serializer_class = PostulanteSerializer

class PostulanteEstudioView(generics.ListCreateAPIView):
    queryset = TblPostulanteEstudio.objects.all()
    serializer_class = PostulanteEstudioSerializer

class PostulanteEstudioDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblPostulanteEstudio.objects.all()
    lookup_url_kwarg = 'postulante_estudio_id'
    serializer_class = PostulanteEstudioSerializer

class PostulanteExperienciaView(generics.ListCreateAPIView):
    queryset = TblPostulanteExperiencia.objects.all()
    serializer_class = PostulanteExperienciaSerializer

class PostulanteExperienciaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblPostulanteExperiencia.objects.all()
    lookup_url_kwarg = 'postulante_experiencia_id'
    serializer_class = PostulanteExperienciaSerializer




