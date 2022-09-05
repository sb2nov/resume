# Quit immediately on any error
set -e

usage() {
  printf '%s\n' "Usage: build.sh [-h]
Compile the resume to its output formats.

where:
  -h, --help  - show this help text"
}

step() {
  local -r msg="$1"
  echo
  echo ">>>> ${msg}"
}

main() {

  step "Clearing previous build artifacts"
  rm -f "${BUILD_DIR}"/*

  step "Compiling PDF"
  latexmk \
    -pdf \
    -file-line-error \
    -halt-on-error \
    -interaction=nonstopmode \
    -output-directory="${BUILD_DIR}"

  step "Removing auxiliary files"
  latexmk \
    -c \
    -output-directory="${BUILD_DIR}"

  step "Generating preview images"
  (cd "${BUILD_DIR}" && pdftoppm -r 600 resume.pdf resume-preview -png)
}

# Option parsing
declare PARAMS=""
declare BUILD_DIR='build'
while (( "$#" )); do
  case $1 in
    -h|--help)  # display help message
      usage
      exit 1
      ;;
    -o|--output-dir)  # set directory for build
      BUILD_DIR="$2"
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
readonly BUILD_DIR

main
