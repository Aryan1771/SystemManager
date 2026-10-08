# System Manager

A collection of Bash monitoring widgets for Linux. The launcher opens six Kitty terminal windows for the clock, CPU, GPU, memory, processes, and system health.

## Requirements

- Linux with Bash and a graphical desktop session.
- [Kitty](https://sw.kovidgoyal.net/kitty/) for the multi-window launcher.
- Standard utilities: `date`, `top`, `ps`, `free`, `uptime`, `df`, and `lscpu`.
- Optional: `sensors` from lm-sensors for temperatures, `lspci` for GPU discovery, and a working `nvidia-smi` for NVIDIA metrics.

## Run

```bash
git clone https://github.com/Aryan1771/SystemManager.git
cd SystemManager
bash systemmanager.sh
```

To run one widget in an existing terminal:

```bash
bash ram.sh
```

Close a widget window or press `Ctrl+C` to stop it. The launcher does not install a background service.

## Widgets

| Script | Information | Refresh interval |
| --- | --- | --- |
| `clock.sh` | Local date and time | 1 second |
| `cpu.sh` | CPU utilization and model | 1 second |
| `gpu.sh` | Available vendor-specific GPU metrics | 2 seconds |
| `ram.sh` | Memory and swap usage | 1 second |
| `tasks.sh` | Processes ordered by CPU use | 2 seconds |
| `health.sh` | Root filesystem usage, uptime, and temperatures | 3 seconds |

## Limitations

GPU reporting depends on the installed driver and available utilities. The AMD path assumes `card0`; Intel reporting searches process output for `i915` and is not a GPU utilization measurement. These scripts display sampled system information and do not enforce resource limits. Window placement and transparency depend on the desktop compositor.

## License

See [LICENSE](LICENSE) for the GNU GPL v3 terms.
