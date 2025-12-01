$basePath = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox"
$index1 = "$basePath\Views\Multi\Index1.cshtml"

# Read the file
$content = Get-Content $index1 -Raw -Encoding UTF8

# ========== WORK PROCESS SECTION ==========
# Find and replace the entire work process slider content

$oldWorkSlider = @'
                        <div class="work1-slider">
                            <div class="work1-single-slider">
                                <div class="images-all">
                                    <div class="shape animate1">
                                        <img src="~/img/shapes/work1-shape.png" alt="">
                                    </div>
                                    <div class="image">
                                        <img src="~/img/others/work1-image1.png" alt="">
                                    </div>
                                </div>
                                <div class="content-area heading1">
                                    <div class="num">
                                        <p>1</p>
                                    </div>
                                    <h3 class="mt-16">Monitoring & Optimization</h3>
                                    <p class="mt-16">Continuous monitoring and regular optimizations to keep your campaigns effective and aligned with your goals.</p>
                                    <div class="work1-list">
                                        <ul>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>In-Depth Research</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Implementation with Precision</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Transparent Reporting </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="work1-single-slider">
                                <div class="images-all">
                                    <div class="shape animate1">
                                        <img src="~/img/shapes/work1-shape.png" alt="">
                                    </div>
                                    <div class="image">
                                        <img src="~/img/others/work1-image2.png" alt="">
                                    </div>
                                </div>
                                <div class="content-area heading1">
                                    <div class="num">
                                        <p>2</p>
                                    </div>
                                    <h3 class="mt-16">Monitoring & Optimization</h3>
                                    <p class="mt-16">Continuous monitoring and regular optimizations to keep your campaigns effective and aligned with your goals.</p>
                                    <div class="work1-list">
                                        <ul>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>In-Depth Research</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Implementation with Precision</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Transparent Reporting </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
'@

$newWorkSlider = @'
                        <div class="work1-slider">
                            <div class="work1-single-slider">
                                <div class="images-all">
                                    <div class="shape animate1">
                                        <img src="~/img/shapes/work1-shape.png" alt="">
                                    </div>
                                    <div class="image">
                                        <img src="~/img/others/work1-image1.png" alt="">
                                    </div>
                                </div>
                                <div class="content-area heading1">
                                    <div class="num">
                                        <p>1</p>
                                    </div>
                                    <h3 class="mt-16">Insight-Driven Research</h3>
                                    <p class="mt-16">Unlock Actionable Insights Through Deep-Dive Market Analysis, Audience Profiling, And Competitor Intelligence To Establish A Strong Strategic Foundation For Your Campaigns.</p>
                                    <div class="work1-list">
                                        <ul>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Comprehensive Audience & Market Research</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Competitor And Trend Analysis</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Data-Backed Opportunity Identification</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="work1-single-slider">
                                <div class="images-all">
                                    <div class="shape animate1">
                                        <img src="~/img/shapes/work1-shape.png" alt="">
                                    </div>
                                    <div class="image">
                                        <img src="~/img/others/work1-image2.png" alt="">
                                    </div>
                                </div>
                                <div class="content-area heading1">
                                    <div class="num">
                                        <p>2</p>
                                    </div>
                                    <h3 class="mt-16">Strategic Blueprint Development</h3>
                                    <p class="mt-16">Transform Insights Into A High-Impact Marketing Strategy Built To Maximize ROI, Strengthen Brand Presence, And Align Every Action With Your Business Objectives.</p>
                                    <div class="work1-list">
                                        <ul>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Tailored Campaign Roadmaps</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Performance-Focused Content Strategy</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Creative & Messaging Frameworks</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="work1-single-slider">
                                <div class="images-all">
                                    <div class="shape animate1">
                                        <img src="~/img/shapes/work1-shape.png" alt="">
                                    </div>
                                    <div class="image">
                                        <img src="~/img/others/work1-image1.png" alt="">
                                    </div>
                                </div>
                                <div class="content-area heading1">
                                    <div class="num">
                                        <p>3</p>
                                    </div>
                                    <h3 class="mt-16">Precision Implementation</h3>
                                    <p class="mt-16">Execute Campaigns With Laser-Focused Accuracy Across All Channels, Leveraging Advanced Tools, Creative Excellence, And Best-Practice Methodologies For Peak Performance.</p>
                                    <div class="work1-list">
                                        <ul>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>High-Quality Ad Creation & Deployment</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Audience Targeting through Content & Funnel Execution</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Real-Time Optimization Setup</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="work1-single-slider">
                                <div class="images-all">
                                    <div class="shape animate1">
                                        <img src="~/img/shapes/work1-shape.png" alt="">
                                    </div>
                                    <div class="image">
                                        <img src="~/img/others/work1-image2.png" alt="">
                                    </div>
                                </div>
                                <div class="content-area heading1">
                                    <div class="num">
                                        <p>4</p>
                                    </div>
                                    <h3 class="mt-16">Transparent Performance Reporting</h3>
                                    <p class="mt-16">Access Clear, Insightful Reports That Reveal Campaign Progress, Key Metrics, And Actionable Recommendations To Drive Continuous Growth And Smarter Decision-Making.</p>
                                    <div class="work1-list">
                                        <ul>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Easy-To-Understand Performance Dashboards</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Deep Analytics With ROI-Focused Insights</li>
                                            <li><span class="check"><i class="fa-solid fa-check"></i></span>Monthly Strategic Review & Recommendations</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
'@

$content = $content.Replace($oldWorkSlider.Trim(), $newWorkSlider.Trim())

# Save the file
Set-Content $index1 $content -NoNewline -Encoding UTF8
Write-Host "Work Process section updated"
