# elasticsearch-github-actions

setup elasticsearch in your github actions' workflow

## Usage
```yaml
steps:
- name: Configure sysctl limits
  run: |
    sudo swapoff -a
    sudo sysctl -w vm.swappiness=1
    sudo sysctl -w fs.file-max=262144
    sudo sysctl -w vm.max_map_count=262144

- uses: miyataka/elasticsearch-github-actions
  with:
    stack-version: '7.6.2'
    plugins: 'analysis-kuromoji analysis-icu'
```
