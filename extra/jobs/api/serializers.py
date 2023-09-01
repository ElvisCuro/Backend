from rest_framework import serializers

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

class CategoriaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblCategoria
        fields = '__all__'

class EmpresaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblEmpresa
        fields = '__all__'

class ExperienciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblExperiencia
        fields = '__all__'

class JornadaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblJornada
        fields = '__all__'

class ModalidadSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblModalidad
        fields = '__all__'

#OFERTA
class OfertaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblOferta
        fields = '__all__'

class OfertaPostulanteSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblOfertaPostulante
        fields = '__all__'

class OfertaEtapaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblOfertaEtapa
        fields = '__all__'


#POSTULANTE
class PostulanteSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblPostulante
        fields = '__all__'

class PostulanteEstudioSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblPostulanteEstudio
        fields = '__all__'

class PostulanteExperienciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TblPostulanteExperiencia
        fields = '__all__'