ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION} 

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
# FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.1 as package_builder
# USER root
# COPY /elasticsearch-analysis-vietnamese-8.2.3 /usr/share/elasticsearch/plugin/elasticsearch-analysis-vietnamese-8.2.3

# RUN cd /usr/share/elasticsearch && \
#     yes | ./bin/elasticsearch-plugin install --batch file:///usr/share/elasticsearch/plugin/elasticsearch-analysis-vietnamese-8.2.3.zip && \
#     bin/elasticsearch-plugin install analysis-kuromoji && \
#     bin/elasticsearch-plugin install analysis-icu
# ARG DEBIAN_FRONTEND=noninteractive

# # thanks to https://github.com/cpfriend1721994/docker-es-cococ-tokenizer
# FROM docker.elastic.co/elasticsearch/elasticsearch:$ELASTIC_VERSION as builder
# ARG ELASTIC_VERSION
# ARG DEBIAN_FRONTEND
# USER root

# RUN apt-get update -y && apt-get install -y software-properties-common build-essential
# RUN gcc --version
# RUN apt-get update -y && \
#     apt-get install -y make cmake pkg-config wget git openjdk-17-jdk
# ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# RUN cd /tmp && wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz && \
# tar xvf apache-maven-3.8.8-bin.tar.gz && \
# mkdir -p /usr/share/maven && cd /usr/share/maven && \
# cp -r /tmp/apache-maven-3.8.8/* .
# ENV PATH=/usr/share/maven/bin:$PATH

# WORKDIR /

# COPY pom.xml .
# RUN mvn verify clean --fail-never

# RUN git clone https://github.com/coccoc/coccoc-tokenizer.git

# RUN mkdir /coccoc-tokenizer/build
# WORKDIR /coccoc-tokenizer/build
# RUN cmake -DBUILD_JAVA=1 ..
# RUN make install

# COPY . /elasticsearch-analysis-vietnamese
# WORKDIR /elasticsearch-analysis-vietnamese
# RUN mvn package

# FROM docker.elastic.co/elasticsearch/elasticsearch:$ELASTIC_VERSION
# ARG ELASTIC_VERSION

# COPY --from=builder /coccoc-tokenizer/dicts/tokenizer /usr/local/share/tokenizer/dicts
# COPY --from=builder /coccoc-tokenizer/dicts/vn_lang_tool /usr/local/share/tokenizer/dicts
# COPY --from=builder /coccoc-tokenizer/build/libcoccoc_tokenizer_jni.so /usr/lib
# COPY --from=builder /coccoc-tokenizer/build/multiterm_trie.dump /usr/local/share/tokenizer/dicts
# COPY --from=builder /coccoc-tokenizer/build/nontone_pair_freq_map.dump /usr/local/share/tokenizer/dicts
# COPY --from=builder /coccoc-tokenizer/build/syllable_trie.dump /usr/local/share/tokenizer/dicts
# COPY --from=builder elasticsearch-analysis-vietnamese-$ELASTIC_VERSION.zip /
# RUN echo "Y" | /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch file:///elasticsearch-analysis-vietnamese-$ELASTIC_VERSION.zip