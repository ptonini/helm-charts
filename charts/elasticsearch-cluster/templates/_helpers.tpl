{{- define "elasticsearch.http" }}
{{- if .tlsCertificate }}
tls:
  certificate:
    secretName: {{ .tlsCertificate }}
{{- end }}
service:
  {{- if .service.annotations }}
  metadata:
    annotations: {{ .service.annotations | toYaml | nindent 6 }}
  {{- end }}
  spec:
    type: {{ .service.type }}
    {{- if .service.loadBalancerIP }}
    loadBalancerIP: {{ .service.loadBalancerIP }}
    {{- end }}
{{- end }}