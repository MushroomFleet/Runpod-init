#!/bin/bash

# This file will be sourced in init.sh

# https://github.com/MushroomFleet/Runpod-init

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/ai-dock/comfyui/main/config/workflows/flux-comfyui-example.json"

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
	"https://github.com/ltdrdata/ComfyUI-Manager"
	"https://github.com/cubiq/ComfyUI_essentials"
	"https://github.com/MushroomFleet/DJZ-Nodes"
	"https://github.com/Gourieff/ComfyUI-ReActor"
	"https://github.com/ltdrdata/ComfyUI-Impact-Pack"
	"https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes"
	"https://github.com/rgthree/rgthree-comfy"
	"https://github.com/crystian/ComfyUI-Crystools"
 	"https://github.com/city96/ComfyUI-GGUF"
	"https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
	"https://github.com/giriss/comfy-image-saver"
	"https://github.com/Fannovel16/comfyui_controlnet_aux"
	"https://github.com/WASasquatch/was-node-suite-comfyui"
	"https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
	"https://github.com/melMass/comfy_mtb"
	"https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
	"https://github.com/sipherxyz/comfyui-art-venture"
	"https://github.com/twri/sdxl_prompt_styler"
	"https://github.com/hylarucoder/comfyui-copilot"
	"https://github.com/kijai/ComfyUI-KJNodes"
	"https://github.com/KoreTeknology/ComfyUI-Universal-Styler"
 	"https://github.com/Fannovel16/ComfyUI-Frame-Interpolation"
)

WORKFLOWS=(
	"https://github.com/MushroomFleet/DJZ-Workflows"
)

CHECKPOINT_MODELS=(
	#"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
	#"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
)

UNET_MODELS=(
	#"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/flux1-dev.sft"
 	#"https://huggingface.co/shuttleai/shuttle-jaguar/resolve/main/gguf/shuttle-jaguar-Q8_0.gguf"
)

DIFFUSION_MODELS=(
	#"https://huggingface.co/city96/HunyuanVideo-gguf/resolve/main/hunyuan-video-t2v-720p-Q8_0.gguf"
    #"https://huggingface.co/Kijai/SkyReels-V1-Hunyuan_comfy/resolve/main/skyreels-hunyuan-I2V-Q8_0.gguf"
    #"https://huggingface.co/shuttleai/shuttle-jaguar/resolve/main/gguf/shuttle-jaguar-Q4_K_S.gguf"
    "https://huggingface.co/shuttleai/shuttle-jaguar/resolve/main/gguf/shuttle-jaguar-Q8_0.gguf"
    "https://huggingface.co/YarvixPA/FLUX.1-Fill-dev-gguf/resolve/main/flux1-fill-dev-Q8_0.gguf"
)


CLIP_MODELS=(
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors"
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/t5xxl_fp16.safetensors"
)

LORA_MODELS=(
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/AssassinKahb-8-16-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/AssassinKahb-flux-1024x-Kappa-Prodigy-e12.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/CyberSocietyV0-e1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/CyberSocietyV1-e1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/CyberSocietyV3-000001.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/CyberSocietyV33-000010.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/NTTW-V1-Flux-e7-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/NTTW-V2-kappa-e11-13.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/NTTW-V3-4-16-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/NTTW-V3-lite-e10-12.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/NTTW-V4-lite-8-16-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/NTTW-v55-e10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/Thorra-Airship-4-16-e10-12.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/Thorra-Lite-V2-Actions-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/Thorra-Lite-V2-Scenes-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/Thorra-Lite-V2-e10-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/Thorra-machine-cities-4-16-e10-12.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/WomanV3-000001.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/Womanv33-e9.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksun-v0-8-16-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunV1-e9-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunV3-e1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunV44-e9.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunv2-000001.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunv2-e1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunv33-e9.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/blacksunv4-e1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cyberninjaV00-e10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV11-e9.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV2-000001.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV22-000010.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV4-000001.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV55-000007.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV6-000001.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/cybersocietyV66-e5.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/ducreux-8-16-e8-10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/notthetrueworldV5-e1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/oldgodsV11_r1-e9-06.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/oldgodsv0.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/oldgodsv00-e9.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/oldgodsv1.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/womanv00-e10.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/womanv1-fast.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/womanv2-fast.safetensors"
	"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/womanv22-000019.safetensors"
	
)

VAE_MODELS=(
    #"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/ae.sft"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    #"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors"
	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors"
	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    if provisioning_has_valid_hf_token; then
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors")
    else
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors")
        sed -i 's/flux1-dev\.safetensors/flux1-schnell.safetensors/g' /opt/ComfyUI/web/scripts/defaultGraph.js
    fi

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/unet" \
        "${UNET_MODELS[@]}"
	provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/diffusion_models" \
        "${DIFFUSION_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/loras" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_workflows
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_workflows() {
    for repo in "${WORKFLOWS[@]}"; do
        dir=$(basename "$repo" .git)
        path="/opt/ComfyUI/user/default/workflows/${dir}"
        if [[ -d "$path" ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating workflows: %s...\n" "${repo}"
                ( cd "$path" && git pull )
            fi
        else
            printf "Cloning workflows: %s...\n" "${repo}"
            git clone "$repo" "$path"
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ "$1" == *.gguf ]]; then
        if [[ -n $auth_token ]]; then
            wget --header="Authorization: Bearer $auth_token" --content-disposition --show-progress -nc -e dotbytes="${3:-4M}" -P "$2" "$1"
        else
            wget --content-disposition --show-progress -nc -e dotbytes="${3:-4M}" -P "$2" "$1"
        fi
    else
        if [[ -n $auth_token ]]; then
            wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
        else
            wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
        fi
    fi
}

provisioning_start
