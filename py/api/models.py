# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class TblCompra(models.Model):
    compra_id = models.AutoField(primary_key=True)
    tbl_fecha_compra = models.DateTimeField()
    tbl_precio = models.FloatField()
    tbl_estado_pedido = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'tbl_compra'


class TblConsola(models.Model):
    consola_id = models.AutoField(primary_key=True)
    tbl_nombre_consola = models.CharField(max_length=100)
    tbl_tipo_consola = models.CharField(max_length=100)
    tbl_precio = models.FloatField()
    tbl_imagen = models.CharField(max_length=255)
    tbl_compra_compra = models.ForeignKey(TblCompra, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_consola'


class TblUsuario(models.Model):
    usuario_id = models.AutoField(primary_key=True)
    tbl_nombre = models.CharField(max_length=100)
    tbl_correo = models.CharField(max_length=100)
    tbl_contrasena = models.CharField(max_length=100)
    tbl_fecha_registro = models.DateTimeField()
    tbl_compra_compra = models.ForeignKey(TblCompra, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_usuario'


class TblVideojuego(models.Model):
    videojuego_id = models.AutoField(primary_key=True)
    tbl_titulo = models.CharField(max_length=100)
    tbl_genero = models.CharField(max_length=100)
    tbl_desarrollador = models.CharField(max_length=100)
    tbl_fecha_lanzamiento = models.DateField()
    tbl_imagen = models.CharField(max_length=100)
    tbl_tipo_consola = models.CharField(max_length=45)
    tbl_compra_compra = models.ForeignKey(TblCompra, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_videojuego'


class TblVideojuegoHasTblConsola(models.Model):
    tbl_videojuego_videojuego = models.ForeignKey(TblVideojuego, models.DO_NOTHING)
    tbl_consola_consola = models.ForeignKey(TblConsola, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_videojuego_has_tbl_consola'
