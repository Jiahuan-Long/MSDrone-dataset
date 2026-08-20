# CDUPatch Dataset

Dataset archive for:

**CDUPatch: Color-driven Universal Adversarial Patch Attack for Dual-modal Visible-Infrared Detectors**

The dataset is distributed as GitHub Release assets because the original archive is larger than GitHub's normal git file limit.

## Archive

- Original archive: `hjc 8.18.zip`
- Compressed size: about 3.7 GB
- Uncompressed size: 3,959,925,437 bytes
- Entries: 12,365
- Top-level directory: `hjc/`

## Directory Summary

The archive contains range-based subdirectories under `hjc/`, including:

- `0-10m`
- `10-20m`
- `20-30m`
- `30-40m`
- `40-50m`
- `50-60m`
- `60-70m`
- `70-80m`
- `80-90m`
- `90-100m`

## Download And Reassemble

Download all release assets from the latest release:

https://github.com/Jiahuan-Long/cdupatch-dataset/releases/tag/v1.0.0

- `hjc_8.18.zip.part-aa`
- `hjc_8.18.zip.part-ab`
- `checksums-sha256.txt`

Then reassemble the archive:

```bash
cat hjc_8.18.zip.part-* > "hjc 8.18.zip"
shasum -a 256 "hjc 8.18.zip"
```

Compare the output with `checksums-sha256.txt`.

You can also use the helper script:

```bash
bash scripts/assemble_dataset.sh
```

## SHA256

See `checksums-sha256.txt` for checksums of the original archive and each split part.

## License

No license file has been provided with this dataset. Add one before public redistribution if needed.
