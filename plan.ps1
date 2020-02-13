$pkg_name="pswindowsupdate"
$pkg_origin="drakoswraith"
$pkg_version="0.1.0"
$pkg_license=@("Apache-2.0")
$pkg_source="https://www.powershellgallery.com/api/v2/package/PSWindowsUpdate"
$pkg_filename="pswindowsupdate.2.1.1.2.nupkg"
$pkg_shasum="72ef46ae999341381c3c6d2864e2beea3f3e72cc476507b5af0fdab24352c64b"
$pkg_deps=@()
$pkg_build_deps=@("core/7zip")
$pkg_bin_dirs=@("bin")
$pkg_description="Load the PSWindowsUpdate Powershell module"

function Invoke-Begin {
  Invoke-DefaultBegin
}

function Invoke-Download {
  $progressPreference = 'silentlyContinue'
  Invoke-DefaultDownload
}

function Invoke-Verify {
  Invoke-DefaultVerify
}

function Invoke-Clean {
  Invoke-DefaultClean
}

function Invoke-Unpack {
  7z x "$HAB_CACHE_SRC_PATH/$pkg_filename" -o"$HAB_CACHE_SRC_PATH/PSWindowsUpdate"
}

function Invoke-Install {
  move-item "$HAB_CACHE_SRC_PATH/PSWindowsUpdate" "$pkg_prefix/bin/"
}

