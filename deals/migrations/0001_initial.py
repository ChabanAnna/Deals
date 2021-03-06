# Generated by Django 3.1.4 on 2021-01-20 11:49

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Deals',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('customer', models.CharField(max_length=100)),
                ('item', models.CharField(max_length=100)),
                ('total', models.DecimalField(decimal_places=2, max_digits=20)),
                ('quantity', models.IntegerField()),
                ('date', models.DateTimeField()),
            ],
        ),
    ]
