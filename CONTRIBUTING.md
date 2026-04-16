# Contributing to Laptop Check

Thank you for taking the time to contribute! Here's how to get involved.

## Ways to Contribute

- **New scripts** — batch scripts, PowerShell one-liners, or CMD tricks
- **Bug fixes** — a script that doesn't run correctly on a specific Windows version
- **Documentation** — improve or add Markdown guides
- **Translations** — translate guides to other languages

## Ground Rules

- Scripts must run on **Windows 10 or 11** without additional software installs (unless clearly documented)
- Every new script should include a brief comment block at the top explaining what it does
- Follow the existing folder structure: `utils/`, `cool_tricks/`, `shutdown_restart_sleep/`
- Keep scripts focused — one script, one purpose

## How to Submit a Pull Request

1. **Fork** the repository and create your branch from `main`:
   ```cmd
   git checkout -b feat/your-feature-name
   ```

2. **Write** your script or documentation.

3. **Test** your script on at least Windows 10 or 11.

4. **Commit** with a clear message following [Conventional Commits](https://www.conventionalcommits.org/):
   ```
   feat: add network speed test script
   fix: correct path handling in clean_junk.bat
   docs: add usage examples to wifi_reveal guide
   ```

5. **Push** and open a Pull Request against `main`.

6. Fill in the pull request template completely.

## Reporting Bugs

Use the **Bug Report** issue template. Include:
- Your Windows version (`winver` output)
- The exact script name and how you ran it
- The error message or unexpected behavior
- Steps to reproduce

## Suggesting Features

Use the **Feature Request** issue template. Describe the problem your idea solves, not just the solution.

## Code Style

- Use `@echo off` at the top of every batch script
- Use `:: comment` style (not `REM`) for inline comments
- Use `pause` at the end of interactive scripts so output stays visible
- Prefer `powercfg`, `wmic`, and `systeminfo` for diagnostic queries — avoid third-party tools
