<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalTime" %>
<%
    String greeting;
    int hour = LocalTime.now().getHour();
    if (hour < 12) greeting = "Good Morning";
    else if (hour < 18) greeting = "Good Afternoon";
    else greeting = "Good Evening";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Chamidu Teshan - Portfolio</title>
<style>
    html {
        scroll-behavior: smooth;
    }
    body {
        margin: 0;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        background-color: #fff;
        color: #111;
        line-height: 1.6;
    }
    header {
        text-align: center;
        padding: 100px 20px 60px;
        background: linear-gradient(to bottom, #f5f5f7, #ffffff);
        opacity: 0;
        transform: translateY(20px);
        animation: fadeUp 1s ease forwards;
    }
    header h1 {
        font-size: 3rem;
        margin-bottom: 10px;
    }
    header p {
        font-size: 1.2rem;
        color: #555;
    }
    section {
        max-width: 900px;
        margin: auto;
        padding: 60px 20px;
        border-bottom: 1px solid #eee;
        opacity: 0;
        transform: translateY(20px);
        transition: all 0.8s ease;
    }
    section.show {
        opacity: 1;
        transform: translateY(0);
    }
    h2 {
        font-size: 2rem;
        margin-bottom: 20px;
        text-align: center;
    }
    .skills-grid, .cert-grid, .proj-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
    }
    .card {
        background: #f5f5f7;
        padding: 20px;
        border-radius: 12px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
        transform: translateY(-5px) scale(1.02);
        box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }
    .contact {
        text-align: center;
        font-size: 1.1rem;
    }
    a {
        color: #0071e3;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    footer {
        text-align: center;
        padding: 30px 20px;
        font-size: 0.9rem;
        color: #777;
    }
    @keyframes fadeUp {
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>

<header>
    <h1><%= greeting %>, I'm Chamidu Teshan</h1>
    <p>Aspiring Network Engineer | DevOps Intern | Cloud & Infrastructure Enthusiast</p>
</header>

<section>
    <h2>About Me</h2>
    <p>
        Dedicated Network Engineer and System Administrator undergraduate with hands-on experience in
        network infrastructure, cloud technologies, and system administration. Aspiring IT Support Specialist and
        DevOps Engineer with proven problem-solving skills in routing, switching, cybersecurity, and CI/CD
        practices. Demonstrated ability to work collaboratively in team environments while maintaining focus on
        organizational objectives and continuous learning.
    </p>
</section>

<section>
    <h2>Technical Skills</h2>
    <div class="skills-grid">
        <div class="card"><strong>Networking:</strong> Cisco Routing & Switching, VLAN, VPN, Load Balancing, FortiGate Firewall</div>
        <div class="card"><strong>Programming:</strong> Python, C++, Java, Bash, Groovy</div>
        <div class="card"><strong>OS:</strong> Linux Administration, Windows Server, Active Directory</div>
        <div class="card"><strong>Cloud:</strong> AWS, Oracle Cloud Infrastructure</div>
        <div class="card"><strong>DevOps Tools:</strong> Docker, Jenkins, Git, CI/CD Pipelines</div>
        <div class="card"><strong>Databases:</strong> MySQL, Oracle Database</div>
    </div>
</section>

<section>
    <h2>Projects</h2>
    <div class="proj-grid">
        <div class="card"><strong>Linux-Based Domain Controller & Zabbix</strong><br>Implemented Samba-based AD, Kerberos, DNS/DHCP, and Zabbix monitoring.</div>
        <div class="card"><strong>Campus Network Design</strong><br>Designed VLSM schema for 4 branches, MPLS/VPN integration, OSI protocol recommendations.</div>
        <div class="card"><strong>Static Website CI/CD on AWS</strong><br>Built AWS CodePipeline/CodeBuild with GitHub integration for automated deployment.</div>
        <div class="card"><strong>Wildlife Safari Trip System</strong><br>MySQL + C++ app managing 50+ bookings and 100+ records.</div>
        <div class="card"><strong>Supermarket Management</strong><br>Java + MySQL app with billing & inventory automation.</div>
        <div class="card"><strong>IoT Projects</strong><br>Grass Cutting Robot & Remote LED Lamp with Arduino/ESP32.</div>
    </div>
</section>

<section>
    <h2>Certifications</h2>
    <div class="cert-grid">
        <div class="card">FortiGate 7.6 Operator Self-Paced (Fortinet) – Jul 2025</div>
        <div class="card">Cloud 101 (AWS Educate) – Jul 2025</div>
        <div class="card">Switching, Routing & Wireless Essentials (Cisco) – Nov 2024</div>
        <div class="card">Introduction to Networks (Cisco) – Jun 2024</div>
        <div class="card">IT Essentials (Cisco) – Mar 2024</div>
        <div class="card">OCI Foundations Associate – Feb 2024</div>
        <div class="card">Cybersecurity Essentials (Cisco) – Oct 2022</div>
        <div class="card">Introduction to Cyber Security (Cisco) – Mar 2022</div>
    </div>
</section>

<section>
    <h2>Contact</h2>
    <div class="contact">
        📧 <a href="mailto:teshan224@gmail.com">teshan224@gmail.com</a><br>
        📱 +94 71 436 0644<br>
        🔗 <a href="https://www.linkedin.com/in/chamidu-teshan/">LinkedIn</a>
    </div>
</section>

<footer>
    &copy; <%= java.time.LocalDate.now().getYear() %> Chamidu Teshan | Built with JSP & Tomcat
</footer>

<script>
    // Scroll animation
    const sections = document.querySelectorAll("section");
    const showOnScroll = () => {
        const triggerBottom = window.innerHeight * 0.85;
        sections.forEach(section => {
            const boxTop = section.getBoundingClientRect().top;
            if (boxTop < triggerBottom) {
                section.classList.add("show");
            }
        });
    };
    window.addEventListener("scroll", showOnScroll);
    window.addEventListener("load", showOnScroll);
</script>

</body>
</html>
