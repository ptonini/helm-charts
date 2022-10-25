{{- define "elasticsearch.http" }}
{{- if .tls_certificate }}
tls:
  certificate:
    secretName: {{ .tls_certificate }}
{{- end }}
service:
  {{- if .service.annotations }}
  metadata:
    annotations: {{ .service.annotations | toYaml | nindent 6 }}
  {{- end }}
  spec:
    type: {{ .service.type }}
    {{- if .service.loadbalancer_ip }}
    loadBalancerIP: {{ .service.loadbalancer_ip }}
    {{- end }}
{{- end }}