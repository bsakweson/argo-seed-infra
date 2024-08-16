{{/*
Expand the name of the chart.
*/}}
{{- define "argo-projs.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Renders a complete tree, even values that contains template
*/}}
{{- define "argo-projs.render" -}}
  {{- if .typeIs "string" .value }}
    {{- tpl .value .context }}
  {{- else }}
    {{- tpl (.value | toYaml) .context }}
  {{- end }}
{{- end }}
