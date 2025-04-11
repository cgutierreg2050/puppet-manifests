node default {
  include chocolatey

  package { 'pdfsam':
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'googlechrome':
    ensure          => installed,
    provider        => chocolatey,
    install_options => ['--ignore-checksums'],
  }

  package { 'adobereader':
    ensure          => installed,
    provider        => chocolatey,
    install_options => ['--ignore-checksums'],
  }

  # Agrega esta llave para cerrar el nodo
  # Esto es una prueba para activar el workflow
}
