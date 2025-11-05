# Microsoft Agent Framework Workshop

Microsoft Agent Framework를 활용한 AI 에이전트 개발 워크샵입니다. 이 워크샵에서는 채팅, 에이전트, Azure AI 통합, MCP, 장기 메모리, 미들웨어, 그리고 Observability까지 다양한 주제를 다룹니다.

## 📚 워크샵 구성

이 워크샵은 8개의 Jupyter Notebook으로 구성되어 있으며, 각 노트북은 독립적으로 학습할 수 있습니다.

### 1️⃣ Chat (01. chat.ipynb)
기본적인 채팅 기능 구현을 학습합니다.

**학습 내용:**
- Azure OpenAI Chat Client 기본 사용법
- 스트리밍 응답 처리
- 대화 이력 관리
- 시스템 메시지와 사용자 메시지 구성

**주요 예제:**
- 기본 채팅 구현
- 스트리밍 응답 처리
- 대화 컨텍스트 유지

---

### 2️⃣ Agent (02. agent.ipynb)
AI 에이전트의 기본 개념과 도구(Tool) 사용법을 학습합니다.

**학습 내용:**
- Agent의 개념과 구성 요소
- Function Calling을 통한 도구 정의
- 복잡한 도구 체인 구성
- 구조화된 출력 (Structured Output)
- 코드 인터프리터 사용

**주요 예제:**
- 날씨 정보 조회 Agent
- 계산기 Agent
- 비전 모델을 활용한 이미지 분석
- 여러 도구를 조합한 복합 Agent

---

### 3️⃣ Azure AI Integration (03. azure_ai.ipynb)
Azure AI 서비스와의 통합을 학습합니다.

**학습 내용:**
- Azure AI Project 설정
- Azure AI Agent Client 사용
- Azure 인증 방법
- Azure AI 리소스 활용

**주요 예제:**
- Azure AI Agent 생성
- Azure 인증 설정
- Azure 리소스와 통합

---

### 4️⃣ MCP - Model Context Protocol (04. mcp.ipynb)
MCP를 사용하여 Agent를 서비스로 노출하는 방법을 학습합니다.

**학습 내용:**
- MCP의 개념과 작동 방식
- Agent를 MCP Server로 노출하기
- MCP 인증 (API Key, Bearer Token)
- MCP 도구를 Agent에 통합
- Claude Desktop, VS Code Copilot 연동

**주요 예제:**
- 레스토랑 메뉴 Agent를 MCP Server로 노출
- API Key 인증 구현
- 번역 서비스 Agent
- 날씨 정보 서비스 Agent

---

### 5️⃣ Long-term Memory (05. long_term_memory.ipynb)
장기 컨텍스트 기억(Long-term Memory) 구현 방법을 학습합니다.

**학습 내용:**
- Context Provider의 개념
- 커스텀 Context Provider 구현
- Mem0 Context Provider 사용
- Redis Context Provider 사용
- Thread 관리 및 스코핑 전략

**주요 예제:**
- 사용자 정보 기억하는 커스텀 Provider
- Mem0 Platform 활용
- Mem0 OSS (Open Source) 사용
- Redis를 활용한 하이브리드 검색
- Global/Per-operation Thread Scope
- Multiple Agents 메모리 격리

---

### 6️⃣ Middleware (06. middleware.ipynb)
Agent의 요청/응답 처리 과정에 개입하는 Middleware를 학습합니다.

**학습 내용:**
- Middleware의 개념과 작동 방식
- 커스텀 Middleware 구현
- 로깅 Middleware
- 캐싱 Middleware
- 에러 핸들링 Middleware

**주요 예제:**
- 요청/응답 로깅
- 응답 캐싱으로 성능 최적화
- 에러 발생 시 자동 재시도
- 여러 Middleware 체인 구성

---

### 7️⃣ Observability (07. observability.ipynb)
Agent의 모니터링과 추적을 위한 Observability를 학습합니다.

**학습 내용:**
- OpenTelemetry 통합
- 분산 추적 (Distributed Tracing)
- 메트릭 수집
- 로그 집계
- Azure Monitor 통합

**주요 예제:**
- OpenTelemetry 설정
- Trace와 Span 생성
- 커스텀 메트릭 추가
- Azure Application Insights 연동

---

### 8️⃣ Evaluation - Red Teaming (08. eval.ipynb)
Azure AI Evaluation을 사용하여 AI 에이전트의 안전성과 견고성을 평가하는 방법을 학습합니다.

**학습 내용:**
- Red Teaming의 개념과 중요성
- Azure AI Evaluation Red Team 기능
- 위험 카테고리 (Violence, Hate/Unfairness, Sexual, Self-Harm)
- 다양한 공격 전략 (인코딩, 난독화 기법)
- 평가 결과 분석 및 해석
- 안전 가이드라인 강화 방법

**주요 예제:**
- 금융 자문 Agent Red Team 평가
- 11가지 공격 전략 적용
- 평가 결과 스코어카드 분석
- 개선된 안전 프롬프트 구현
- 적대적 공격 시뮬레이션

---

## 🚀 시작하기

### 사전 요구사항

- Python 3.12 이상
- Azure OpenAI 리소스 또는 OpenAI API 키
- (선택) Azure AI Project
- (선택) Redis (Long-term Memory 실습용)
- (선택) Mem0 API 키 (Long-term Memory 실습용)

### 설치

1. **저장소 클론**
   ```bash
   git clone <repository-url>
   cd maf-workshop
   ```

2. **가상 환경 생성 및 활성화**
   
   **UV 사용 (권장):**
   ```bash
   uv venv
   source .venv/bin/activate  # macOS/Linux
   # 또는
   .venv\Scripts\activate  # Windows
   ```

   **또는 Python venv 사용:**
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # macOS/Linux
   # 또는
   .venv\Scripts\activate  # Windows
   ```

3. **패키지 설치**
   
   **UV 사용:**
   ```bash
   uv pip install -e .
   ```

   **또는 pip 사용:**
   ```bash
   pip install -e .
   ```

4. **환경 변수 설정**
   
   `.env` 파일을 생성하고 다음 내용을 추가합니다:

   ```env
   # Azure OpenAI 설정 (필수)
   AZURE_OPENAI_ENDPOINT=https://your-resource.openai.azure.com
   AZURE_OPENAI_API_KEY=your-api-key
   AZURE_OPENAI_CHAT_DEPLOYMENT_NAME=gpt-4
   
   # Azure AI Project 설정 (선택)
   AZURE_AI_PROJECT_ENDPOINT=https://your-project.api.azureml.ms
   AZURE_AI_MODEL_DEPLOYMENT_NAME=gpt-4
   
   # Mem0 설정 (선택 - Long-term Memory 실습용)
   MEM0_API_KEY=your-mem0-api-key
   
   # Redis 설정 (선택 - Long-term Memory 실습용)
   REDIS_URL=redis://localhost:6379
   
   # Observability 설정 (선택 - Observability 실습용)
   ENABLE_OTEL=true
   OTLP_ENDPOINT=localhost:4317
   ```

5. **Jupyter 실행**
   ```bash
   jupyter lab
   # 또는
   jupyter notebook
   ```

---

## 📖 학습 가이드

### 추천 학습 순서

1. **기초 단계** (필수)
   - 01. Chat → 02. Agent → 03. Azure AI Integration

2. **고급 기능** (선택)
   - 04. MCP → 05. Long-term Memory

3. **운영 및 모니터링** (선택)
   - 06. Middleware → 07. Observability

4. **안전성 평가** (선택)
   - 08. Evaluation (Red Teaming)

### 각 노트북 학습 시간

- Chat: 30분
- Agent: 1시간
- Azure AI Integration: 30분
- MCP: 1시간
- Long-term Memory: 1.5시간
- Middleware: 45분
- Observability: 1시간
- Evaluation (Red Teaming): 1.5시간 (평가 실행 시간 포함)

**총 학습 시간: 약 7.5시간**

## 💡 주요 학습 포인트

### 1. Agent 설계 패턴
```python
# 도구 정의
def get_weather(city: str) -> str:
    return f"{city}의 날씨 정보"

# Agent 생성
agent = client.create_agent(
    name="WeatherAgent",
    instructions="날씨 정보를 제공하는 Assistant",
    tools=[get_weather]
)

# 실행
result = await agent.run("서울 날씨 알려줘")
```

### 2. Context Provider 활용
```python
# 커스텀 Context Provider
class CustomMemory(ContextProvider):
    async def invoking(self, messages, **kwargs):
        # 컨텍스트 제공
        return Context(instructions="추가 지시사항")
    
    async def invoked(self, request_messages, response_messages, **kwargs):
        # 메모리 업데이트
        pass
```

### 3. MCP Server 노출
```python
# Agent를 MCP Server로 노출
server = agent.as_mcp_server()

# Claude Desktop, VS Code에서 사용 가능
```

### 4. Middleware 체인
```python
# 여러 Middleware 조합
agent = ChatAgent(
    chat_client=client,
    middlewares=[
        LoggingMiddleware(),
        CachingMiddleware(),
        ErrorHandlingMiddleware()
    ]
)
```

---

## 🔧 문제 해결

### 일반적인 문제

#### 1. Azure OpenAI 연결 오류
```
AuthenticationError: Incorrect API key provided
```
**해결방법:** `.env` 파일의 `AZURE_OPENAI_API_KEY`를 확인하세요.

#### 2. 코드 인터프리터 리전 오류
```
BadRequestError: Code interpreter tool cannot be used in this region
```
**해결방법:** 노트북에 포함된 대체 함수 도구를 사용하세요.

#### 3. Redis 연결 오류
```
ConnectionError: Error connecting to Redis
```
**해결방법:** 
```bash
# Docker로 Redis 실행
docker run --name redis -p 6379:6379 -d redis:8.0.3

# 기존 컨테이너 시작
docker start redis
```

#### 4. Mem0 API 오류
```
ValidationError: Filters are required and cannot be empty
```
**해결방법:** `application_id`와 `agent_id`를 모두 제공하세요.

---

## 📚 참고 자료

### 공식 문서
- [Microsoft Agent Framework](https://github.com/microsoft/agent-framework)
- [Azure OpenAI Service](https://learn.microsoft.com/azure/ai-services/openai/)
- [Model Context Protocol](https://modelcontextprotocol.io/)
- [Mem0 Documentation](https://docs.mem0.ai/)

### 추가 학습 자료
- [Azure AI Studio](https://ai.azure.com/)
- [OpenTelemetry Python](https://opentelemetry.io/docs/languages/python/)
- [Redis Vector Search](https://redis.io/docs/stack/search/reference/vectors/)
- [Azure AI Evaluation](https://learn.microsoft.com/azure/ai-services/openai/concepts/evaluation)
- [Responsible AI Guidelines](https://learn.microsoft.com/azure/ai-services/openai/concepts/responsible-ai)
- [PyRIT - Python Risk Identification Toolkit](https://github.com/Azure/PyRIT)

---

## 📝 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다.

---

## 💬 문의 및 지원

질문이나 문제가 있으시면 이슈를 등록해주세요.

---

## 🎯 다음 단계

워크샵을 완료한 후:

1. **프로덕션 배포**: Azure Container Apps 또는 App Service에 배포
2. **CI/CD 구성**: GitHub Actions 또는 Azure DevOps 파이프라인 설정
3. **모니터링**: Azure Application Insights와 통합
4. **보안 강화**: Azure Key Vault로 시크릿 관리
5. **성능 최적화**: 캐싱, 배치 처리 등 적용

---

**Happy Learning! 🚀**
