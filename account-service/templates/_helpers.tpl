{{/*
Return the full name of the chart (release name + chart name)
*/}}
{{- define "account-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
