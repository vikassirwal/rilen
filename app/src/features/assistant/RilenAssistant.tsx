import { useMemo, useState } from "react";
import { Bot, Maximize2, Minimize2, Send, Sparkles, X } from "lucide-react";
import { Button } from "../../components/ui/Button";

type AssistantMessage = {
  id: string;
  role: "assistant" | "user";
  text: string;
};

const starterMessages: AssistantMessage[] = [
  {
    id: "welcome",
    role: "assistant",
    text: "I can help you notice fee exceptions, find students, and prepare the next action. AI connection is not enabled yet.",
  },
];

const suggestedPrompts = [
  "Who needs fee follow-up today?",
  "Find students with missing details",
  "Explain this fee balance",
];

export function RilenAssistant() {
  const [isOpen, setIsOpen] = useState(false);
  const [isExpanded, setIsExpanded] = useState(false);
  const [input, setInput] = useState("");
  const [messages, setMessages] = useState<AssistantMessage[]>(starterMessages);

  const modeLabel = useMemo(() => (isExpanded ? "Expanded" : "Docked"), [isExpanded]);

  function sendMessage(text: string) {
    const cleaned = text.trim();
    if (!cleaned) return;

    setMessages((current) => [
      ...current,
      { id: `user-${Date.now()}`, role: "user", text: cleaned },
      {
        id: `assistant-${Date.now()}`,
        role: "assistant",
        text: "This is a UI preview. Once connected, I will answer using live RILEN data and show the exact records behind the suggestion.",
      },
    ]);
    setInput("");
    setIsExpanded(true);
  }

  if (!isOpen) {
    return (
      <button className="assistant-launcher" onClick={() => setIsOpen(true)} aria-label="Open RILEN assistant">
        <Sparkles size={19} />
        <span>Ask RILEN</span>
      </button>
    );
  }

  return (
    <aside className={`assistant-dock ${isExpanded ? "assistant-dock--expanded" : ""}`} aria-label="RILEN assistant">
      <header className="assistant-dock__top">
        <div className="assistant-identity">
          <div className="assistant-orb">
            <Bot size={18} />
          </div>
          <div>
            <strong>RILEN AI</strong>
            <span>{modeLabel} preview</span>
          </div>
        </div>
        <div className="assistant-actions">
          <Button
            variant="ghost"
            onClick={() => setIsExpanded((current) => !current)}
            aria-label={isExpanded ? "Dock assistant" : "Expand assistant"}
          >
            {isExpanded ? <Minimize2 size={17} /> : <Maximize2 size={17} />}
          </Button>
          <Button variant="ghost" onClick={() => setIsOpen(false)} aria-label="Close assistant">
            <X size={17} />
          </Button>
        </div>
      </header>

      <div className="assistant-thread">
        {messages.map((message) => (
          <div key={message.id} className={`assistant-message assistant-message--${message.role}`}>
            {message.text}
          </div>
        ))}
      </div>

      {!isExpanded && (
        <div className="assistant-suggestions">
          {suggestedPrompts.map((prompt) => (
            <button key={prompt} onClick={() => sendMessage(prompt)}>
              {prompt}
            </button>
          ))}
        </div>
      )}

      <form
        className="assistant-compose"
        onSubmit={(event) => {
          event.preventDefault();
          sendMessage(input);
        }}
      >
        <input
          value={input}
          onChange={(event) => setInput(event.target.value)}
          placeholder="Ask about students, fees, or exceptions"
        />
        <button type="submit" aria-label="Send assistant message">
          <Send size={17} />
        </button>
      </form>
    </aside>
  );
}
