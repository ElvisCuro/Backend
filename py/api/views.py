from rest_framework import generics

from.models import(
    TblCompra,
    TblConsola,
    TblUsuario,
    TblVideojuego,
    TblVideojuegoHasTblConsola
)

from.serializers import(
    TblCompraSerializer,
    TblConsolaSerializer,
    TblUsuarioSerializer,
    TblVideojuegoSerializer,
    TblVideojuegoHasTblConsolaSerializer
)
# Create your views here.

class TblCompraView(generics.ListCreateAPIView):
    queryset = TblCompra.objects.all()
    serializer_class = TblCompraSerializer

class TblCompraDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblCompra.objects.all()
    lookup_url_kwarg = 'compra_id'
    serializer_class = TblCompraSerializer

class TblConsolaView(generics.ListCreateAPIView):
    queryset = TblConsola.objects.all()
    serializer_class = TblConsolaSerializer

class TblConsolaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblConsola.objects.all()
    lookup_url_kwarg = 'consola_id'
    serializer_class = TblConsolaSerializer

class TblUsuarioView(generics.ListCreateAPIView):
    queryset = TblUsuario.objects.all()
    serializer_class = TblUsuarioSerializer

class TblUsuarioDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblUsuario.objects.all()
    lookup_url_kwarg = 'usuario_id'
    serializer_class = TblUsuarioSerializer

class TblVideojuegoView(generics.ListCreateAPIView):
    queryset = TblVideojuego.objects.all()
    serializer_class = TblVideojuegoSerializer

class TblVideojuegoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblVideojuego.objects.all()
    lookup_url_kwarg = 'videojuego_id'
    serializer_class = TblVideojuegoSerializer

class TblVideojuegoHasTblConsolaView(generics.ListCreateAPIView):
    queryset = TblVideojuegoHasTblConsola.objects.all()
    serializer_class = TblVideojuegoHasTblConsolaSerializer

class TblVideojuegoHasTblConsolaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TblVideojuegoHasTblConsola.objects.all()
    lookup_url_kwarg = 'videojuego_has_consola_id'
    serializer_class = TblVideojuegoHasTblConsolaSerializer