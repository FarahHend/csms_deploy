{{/*
Return the chart name
*/}}
{{- define "account-service.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Return the full name of the chart (release name + chart name),
but avoid duplicate if release name already starts with chart name.
*/}}
{{- define "account-service.fullname" -}}
{{- $name := .Release.Name -}}
{{- $chart := .Chart.Name -}}
{{- if hasPrefix $name (printf "%s-" $chart) -}}
  {{- $name -}}
{{- else -}}
  {{- printf "%s-%s" $name $chart | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
