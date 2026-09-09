const roleContent = {
  teacher: {
    tag: "Teacher view",
    title: "Tomorrow's small group is ready.",
    body:
      "RILEN identifies six students who need fraction comparison practice, explains the evidence, and suggests a 22-minute activity using available curriculum.",
    bullets: [
      "Evidence: exit tickets, missed prerequisite skill, last lesson pace",
      "Action: regroup before independent practice",
      "Measure: follow-up check auto-created for Friday",
    ],
  },
  leader: {
    tag: "Leader view",
    title: "Campus patterns are visible before they become crises.",
    body:
      "RILEN compares schools against their own context, highlighting where attendance, staffing, assessment, and intervention capacity are drifting.",
    bullets: [
      "Evidence: cohort variance, staffing coverage, attendance trend",
      "Action: shift intervention capacity to two campuses",
      "Measure: weekly network review brief generated automatically",
    ],
  },
  support: {
    tag: "Support view",
    title: "Student support teams get one shared picture.",
    body:
      "RILEN connects academic risk, attendance change, counseling notes, and family touchpoints so support teams can coordinate without losing nuance.",
    bullets: [
      "Evidence: absence spike, assignment gaps, prior support history",
      "Action: schedule counselor check-in and family outreach",
      "Measure: response status visible to approved stakeholders",
    ],
  },
};

const roleView = document.querySelector("#role-view");
const roleButtons = document.querySelectorAll("[data-role]");

function renderRole(role) {
  const content = roleContent[role];

  roleView.innerHTML = `
    <p class="tag">${content.tag}</p>
    <h3>${content.title}</h3>
    <p>${content.body}</p>
    <ul>
      ${content.bullets.map((bullet) => `<li>${bullet}</li>`).join("")}
    </ul>
  `;

  roleButtons.forEach((button) => {
    const isActive = button.dataset.role === role;
    button.classList.toggle("active", isActive);
    button.setAttribute("aria-selected", String(isActive));
  });
}

roleButtons.forEach((button) => {
  button.addEventListener("click", () => renderRole(button.dataset.role));
});

const canvas = document.querySelector("#network-canvas");
const context = canvas.getContext("2d");
const nodes = Array.from({ length: 38 }, (_, index) => ({
  angle: index * 0.62,
  radius: 80 + (index % 7) * 32,
  speed: 0.0018 + (index % 5) * 0.0004,
  size: 2 + (index % 4),
}));

function resizeCanvas() {
  const ratio = window.devicePixelRatio || 1;
  canvas.width = window.innerWidth * ratio;
  canvas.height = window.innerHeight * ratio;
  context.setTransform(ratio, 0, 0, ratio, 0, 0);
}

function drawNetwork() {
  const width = window.innerWidth;
  const height = window.innerHeight;
  const centerX = width * 0.58;
  const centerY = height * 0.44;
  const points = nodes.map((node) => {
    node.angle += node.speed;
    return {
      x: centerX + Math.cos(node.angle) * node.radius + Math.sin(node.angle * 1.7) * 24,
      y: centerY + Math.sin(node.angle) * node.radius * 0.72,
      size: node.size,
    };
  });

  context.clearRect(0, 0, width, height);

  points.forEach((point, index) => {
    points.slice(index + 1).forEach((other) => {
      const distance = Math.hypot(point.x - other.x, point.y - other.y);

      if (distance < 150) {
        context.strokeStyle = `rgba(47, 143, 107, ${0.22 - distance / 900})`;
        context.lineWidth = 1;
        context.beginPath();
        context.moveTo(point.x, point.y);
        context.lineTo(other.x, other.y);
        context.stroke();
      }
    });
  });

  points.forEach((point, index) => {
    context.fillStyle = index % 5 === 0 ? "rgba(184, 95, 61, 0.9)" : "rgba(18, 63, 50, 0.72)";
    context.beginPath();
    context.arc(point.x, point.y, point.size, 0, Math.PI * 2);
    context.fill();
  });

  requestAnimationFrame(drawNetwork);
}

resizeCanvas();
drawNetwork();
window.addEventListener("resize", resizeCanvas);
