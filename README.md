# geo_2

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
#� �g�e�o�l�o�c�a�l�i�z�a�-�o�-�F�l�u�t�t�e�r�
�
�#� �g�e�o�l�o�c�a�l�i�z�a�c�a�o�-�F�l�u�t�t�e�r�
�
�

# Obter o pacote geolocator
## pub get add geolocator

abra o arquivo AndroidManifest.xml (localizado em android/app/src/main) e adicione uma das duas linhas a seguir
como filhos diretos da <manifest>tag (ao configurar ambas as permissões ACCESS_FINE_LOCATION, elas serão usadas pelo plug-in geolocalizador):

<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />

Adicione o seguinte ao seu arquivo "gradle.properties":

android.useAndroidX=true
android.enableJetifier=true

Certifique-se de definir o compileSdkVersionem seu arquivo "android/app/build.gradle" para 33:

android {
  compileSdkVersion 33

  ...
}

