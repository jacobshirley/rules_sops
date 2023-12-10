"""Mirror of release info

TODO: generate this file from GitHub API"""

# The integrity hashes can be computed with
# shasum -b -a 384 [downloaded file] | awk '{ print $1 }' | xxd -r -p | base64
TOOL_VERSIONS = {
    "3.8.1": {
        "macos_x86_64": "aa3e79c1ff7a923d380b95b01fb0bc84ae1f5209b0a149b3f4c1936037792330",
        "macos_aarch64": "b5d172960c135c7b8cd9719cee94283bccdf5c046c7563391eee8dd4882d6573",
        "linux_x86_64": "d6bf07fb61972127c9e0d622523124c2d81caf9f7971fb123228961021811697",
        "linux_aarch64": "15b8e90ca80dc23125cd2925731035fdef20c749ba259df477d1dd103a06d621",
        "windows_x86_64": "d6bf07fb61972127c9e0d622523124c2d81caf9f7971fb123228961021811697",
    },
}
