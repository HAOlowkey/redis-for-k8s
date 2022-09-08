{{/* vim: set filetype=mustache: */}}

{{/*
Expand the name of the release.
*/}}
{{- define "redis.fullname" -}}
{{- include "common.names.fullname" . -}}
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
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image) "global" .Values.global) }}
{{- end -}}

{{- define "redis.auth.password" -}}
{{ default "Root@123!" .Values.auth.password | b64enc | quote }}
{{- end -}}