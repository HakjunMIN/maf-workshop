# GitHub Codespaces Setup

이 프로젝트는 GitHub Codespaces에서 바로 실행할 수 있도록 구성되어 있습니다.

## 🚀 빠른 시작

1. **GitHub에서 Codespace 생성**
   - 이 리포지토리의 GitHub 페이지에서 `Code` → `Codespaces` → `Create codespace on main` 클릭
   - 또는 브라우저에서 `.` 키를 눌러 github.dev에서 바로 편집

2. **환경 설정**
   - Codespace가 생성되면 자동으로 환경 설정이 시작됩니다
   - `.devcontainer/setup.sh` 스크립트가 자동으로 실행되어 필요한 패키지를 설치합니다

3. **API 키 설정**
   - 루트 디렉토리의 `.env` 파일을 열어 실제 API 키로 업데이트하세요
   ```bash
   OPENAI_API_KEY=your_actual_openai_key
   ANTHROPIC_API_KEY=your_actual_anthropic_key
   AZURE_OPENAI_API_KEY=your_actual_azure_key
   AZURE_OPENAI_ENDPOINT=your_actual_azure_endpoint
   ```

## 🔧 환경 구성

### Python 환경
- **Python 3.12**
- **uv** 패키지 매니저
- **Jupyter** 노트북 지원

### 포함된 확장프로그램
- Python 개발 도구 (Python, Pylint, Flake8)
- Jupyter 확장프로그램
- Ruff (빠른 Python 린터/포매터)
- Azure AI GitHub Copilot
- YAML, JSON 지원

### 자동 설정 기능
- Python 3.12 환경
- uv 패키지 매니저
- 일반적인 AI/ML 라이브러리 설치
- Jupyter 커널 설정
- Git 구성

## 📚 사용 방법

1. **Jupyter 노트북 실행**
   - 아무 `.ipynb` 파일을 열고 우측 상단의 커널을 "MAF Workshop (Python 3.12)"로 선택
   - 셀을 실행하여 코드 테스트

2. **패키지 관리**
   ```bash
   # 새 패키지 설치
   uv add package_name
   
   # 개발 의존성 설치
   uv add --dev package_name
   
   # 패키지 제거
   uv remove package_name
   
   # 가상환경에서 명령 실행
   uv run python script.py
   ```

3. **환경 동기화**
   ```bash
   # 의존성 동기화 (pyproject.toml 기준)
   uv sync
   ```

## 🐛 문제 해결

### uv가 설치되지 않은 경우
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.cargo/bin:$PATH"
```

### Jupyter 커널이 보이지 않는 경우
```bash
uv run python -m ipykernel install --user --name maf-workshop --display-name "MAF Workshop (Python 3.12)"
```

### 패키지 설치 문제
```bash
# 캐시 클리어 후 재시도
uv cache clean
uv sync
```

## 📁 프로젝트 구조

```
maf-workshop/
├── .devcontainer/
│   ├── devcontainer.json    # Codespaces 설정
│   └── setup.sh            # 환경 설정 스크립트
├── *.ipynb                 # Jupyter 노트북들
├── pyproject.toml          # Python 프로젝트 설정
├── .env                    # 환경변수 (API 키 등)
└── README.md              # 프로젝트 설명
```

## ⚡ 성능 팁

- **포트 포워딩**: 8000, 8080, 3000 포트가 자동으로 포워딩됩니다
- **캐시 최적화**: uv 캐시가 볼륨으로 마운트되어 재빌드 시 시간을 절약합니다
- **자동 포매팅**: 저장 시 자동으로 코드 포매팅이 적용됩니다

---

이제 GitHub Codespaces에서 바로 AI 워크샵을 시작할 수 있습니다! 🚀