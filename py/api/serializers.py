from rest_framework import serializers

from.models import(
    TblCompra,
    TblConsola,
    TblUsuario,
    TblVideojuego,
    TblVideojuegoHasTblConsola
)

class TblCompraSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblCompra
        fields = '__all__'

class TblConsolaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblConsola
        fields = '__all__'

class TblUsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblUsuario
        fields = '__all__'

class TblVideojuegoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblVideojuego
        fields = '__all__'

class TblVideojuegoHasTblConsolaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblVideojuegoHasTblConsola
        fields = '__all__'
