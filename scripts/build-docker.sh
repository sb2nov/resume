usage() {
  printf '%s\n' "Usage: build-docker.sh [-h]
Build resume in Docker container.

where:
  -h, --help  - show this help text"
}

main() {
  # Build docker image
  docker build -t "${IMAGE}" .

  # Spin up a container to build resume
  docker run \
    --rm \
    --user="$(id -u):$(id -g)" \
    --net=none \
    --volume="${PWD}":/data \
    "${IMAGE}" \
    bash /data/scripts/build.sh
}

# Option parsing
declare PARAMS=""
declare IMAGE='bclarkx2/resume:latest'
while (( "$#" )); do
  case $1 in
    -h|--help)  # display help message
      usage
      exit 1
      ;;
    -i|--image)  # set image name
      IMAGE="$2"
      shift 2
      break
      ;;
    --)  # End argument parsing
      shift
      break
      ;;
    -*|--*)  # unsupported flags
      echo "Unsupported flag: $1" >&2
      usage
      exit 1
      ;;
    *)  # preserve positional arguments
      PARAMS="${PARAMS} $1"
      shift
      ;;
  esac
done

# set positional arguments in their proper place
eval set -- "${PARAMS}"

# Freeze configuration flags
readonly IMAGE

main
