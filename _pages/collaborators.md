---
layout: page
title: collaborators
permalink: /collaborators/
description: #Collaborators of the Orange Jellyfish group
nav: true
horizontal: false
---

<!-- pages/collaborators.md -->
<div class="projects">
  {%- assign people = site.people | where: "type", "collaborator" -%}
  {%- assign sorted_people = people | sort: "importance" %}
  <!-- Generate cards for each person -->
  <div class="grid">
  {%- for person in sorted_people -%}
    {% include person.html %}
  {%- endfor %}
</div>
