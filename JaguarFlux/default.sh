#!/bin/bash

# This file will be sourced in init.sh

# https://github.com/MushroomFleet/Runpod-init

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/MushroomFleet/DJZ-Workflows/refs/heads/main/Hoda-Hunyuan-Video/NativeComfy/Hoda-Hunyuan-t2v-GGUF-Native-Lora-lines-V20.json"

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
	"https://github.com/Gourieff/comfyui-reactor-node"
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
    	"https://github.com/crystian/ComfyUI-Crystools"
    	"https://github.com/rgthree/rgthree-comfy"
	"https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
	"https://github.com/sipherxyz/comfyui-art-venture"
	"https://github.com/twri/sdxl_prompt_styler"
	"https://github.com/hylarucoder/comfyui-copilot"
	"https://github.com/kijai/ComfyUI-KJNodes"
	"https://github.com/KoreTeknology/ComfyUI-Universal-Styler"
    	"https://github.com/city96/ComfyUI_ExtraModels"
    	"https://github.com/chflame163/ComfyUI_LayerStyle"
    	#"https://github.com/kijai/ComfyUI-HunyuanVideoWrapper"
    	#"https://github.com/ShmuelRonen/ComfyUI-EmptyHunyuanLatent"
	"https://github.com/Acly/comfyui-inpaint-nodes"
	"https://github.com/kijai/ComfyUI-segment-anything-2"
 	"https://github.com/kijai/ComfyUI-Florence2"
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
)

DIFFUSION_MODELS=(
	#"https://huggingface.co/city96/HunyuanVideo-gguf/resolve/main/hunyuan-video-t2v-720p-Q8_0.gguf"
    #"https://huggingface.co/Kijai/SkyReels-V1-Hunyuan_comfy/resolve/main/skyreels-hunyuan-I2V-Q8_0.gguf"
    "https://huggingface.co/shuttleai/shuttle-jaguar/resolve/main/gguf/shuttle-jaguar-Q4_K_S.gguf"
    #"https://huggingface.co/shuttleai/shuttle-jaguar/resolve/main/gguf/shuttle-jaguar-Q8_0.gguf"
    "https://huggingface.co/YarvixPA/FLUX.1-Fill-dev-gguf/resolve/main/flux1-fill-dev-Q8_0.gguf"
)

CLIP_MODELS=(
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors"
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/t5xxl_fp16.safetensors"
)

TEXTENCODERS_MODELS=(
    #"https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/text_encoders/llava_llama3_fp8_scaled.safetensors"
    #"https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/text_encoders/clip_l.safetensors"
)

LORA_MODELS=(
	#"https://huggingface.co/mushroomfleet/Flux-Lora-Collection/resolve/main/AssassinKahb-8-16-e9-10.safetensors"
    #"https://huggingface.co/mushroomfleet/HyVid-Lora-Collection/resolve/main/xjx-tokyoaracer.safetensors"
    #"https://huggingface.co/mushroomfleet/HyVid-Lora-Collection/resolve/main/xjx-TokyoRacerV2-comfy.safetensors"
    #"https://huggingface.co/mushroomfleet/HyVid-Lora-Collection/resolve/main/kck-cybersociety-video-V0.safetensors"
    #"https://huggingface.co/mushroomfleet/HyVid-Lora-Collection/resolve/main/kbk_backrooms_comfyui.safetensors"
    #"https://huggingface.co/mushroomfleet/HyVid-Lora-Collection/resolve/main/fxf-tokyoMeet-comfy.safetensors"
)

VAE_MODELS=(
    "https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/ae.sft"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    #"https://huggingface.co/Kijai/HunyuanVideo_comfy/resolve/main/hunyuan_video_vae_bf16.safetensors"
)

ESRGAN_MODELS=(
    #"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    #"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
	#"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors"
	#"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors"
	#"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors"
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
        "${WORKSPACE}/ComfyUI/models/text_encoders" \
        "${TEXTENCODERS_MODELS[@]}"
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
