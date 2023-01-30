# Reset ownership action

Reset files and directories ownership to avoid permission errors when running other workflows on the same workspace

## Usage

This job should run at the end of other jobs, this is to make sure all files and directories affected by other jobs will be reset correctly

```yaml
clean:
  needs: prev-job
  steps:
    - name: Reset workspace ownership
      uses: resuelve/reset-ownership-action@v1
```

Enjoy 🎉
