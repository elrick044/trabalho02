FROM gitpod/workspace-full

USER gitpod

# Instala Flutter
RUN git clone https://github.com/flutter/flutter.git /home/gitpod/flutter -b stable
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Aceita os termos da licença do Android SDK
RUN yes | /home/gitpod/flutter/bin/flutter doctor --android-licenses

# Prepara os binários e dependências
RUN flutter doctor