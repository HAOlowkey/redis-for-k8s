{{/*
Expand the name of the release.
*/}}
{{- define "redis.name" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "redis.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Return the proper redis image name
*/}}
{{- define "redis.image" -}}
{{- .Values.image.registry }}/{{- .Values.image.repository }}:{{- .Values.image.tag }}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "redis.imagePullSecrets" -}}
  {{- if not (empty .Values.image.pullSecrets) }}
imagePullSecrets:
    {{ range .Values.image.pullSecrets -}}
- name: {{ . }}
    {{- end }}
  {{- end }}
{{- end -}}