# Inside Container Action
Run github action inside a new container with TTY supported.
## How to use ?
In case we build something with Github Action and need CUDA. Then, use this action to run inside a prebuilt CUDA image:
```yaml
name: Build something using prebuilt CUDA image.
  uses: hieupth/inside-container-action@main
  with: 
    shell: bash
    username: hieupth
    password: somethings
    image: hieupth/mamba:cuda
    options: |
      -v ./build.sh:/build.sh
      -e VERSION=${{matrix.version}}
    run: bash /build.sh
```
## License
[Apache License 2.0](LICENSE)<br>
Copyright &copy; 2024 [Hieu Pham](https://github.com/hieupth). All rights reserved.