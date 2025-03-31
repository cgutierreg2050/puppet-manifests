node 'JOSSPC-POM', 'josspc-pom.pomcr.local', 'fabianpclegal-pom.pomcr.local', 'michellegal-pom.pomcr.local' {
  
  class { 'chocolatey': } # Asegurar que Chocolatey está instalado

  package { '7zip':
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'googlechrome':
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'notepadplusplus':
    ensure   => '8.7.7',
    provider => chocolatey,
  }

  package { 'vlc':
    ensure   => '3.0.21',
    provider => chocolatey,
  }
}

# Nodo por defecto en caso de que algún host no coincida con ninguno anterior
node default {
  notify { "Nodo no definido específicamente. No se aplican cambios.": }
}

