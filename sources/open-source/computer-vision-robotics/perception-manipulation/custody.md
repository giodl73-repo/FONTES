# Computer Vision, Perception, and Robotic Manipulation Custody

## Research question

What source custody should FONTES add for computer vision, machine perception,
visual recognition, scene representations, embodied agents, and robotic
manipulation before PROOF, FLETCH, CROP, and PEBBLE make stronger visual or
robotic reasoning claims?

## Current custody decision

This tranche anchors computer vision and robotic manipulation in MIT OCW 6.801,
6.8300, and 6.4210. MIT OCW course/listing pages are mapped as
`derived_text_allowed`. Szeliski's computer vision book, Stanford CS231n, OpenCV,
ROS 2, MoveIt, and Drake are mapped as `metadata_only` or `license_review`
source identities until exact book, site, docs, code, notebook, model, dataset,
image, simulation, and artifact reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-CVROBOT-01 | `https://ocw.mit.edu/courses/6-801-machine-vision-fall-2020/` | MIT 6.801 introduces symbolic descriptions from images, image formation, image analysis, binary image processing, filtering, robotics applications, and intelligent machine-environment interaction. | Provides the primary candidate surface for classical machine-vision custody. | High |
| FONTES-CVROBOT-02 | `https://ocw.mit.edu/courses/6-801-machine-vision-fall-2020/pages/lecture-notes/` | The OCW lecture-note index is a stable listing surface for machine-vision lectures. | Lecture-note identities can be cited, but PDFs, diagrams, examples, and images remain child-resource boundaries. | High |
| FONTES-CVROBOT-03 | `https://ocw.mit.edu/courses/6-8300-advances-in-computer-vision-spring-2025/` | MIT 6.8300 covers advanced computer vision, geometry, image formation, representation theory, multi-view geometry, differentiable rendering, neural scene representations, correspondence, optical flow, point tracking, diffusion guidance, representation learning, and vision for embodied agents. | Adds modern vision, scene-representation, generative-vision, and embodied-agent source vocabulary. | High |
| FONTES-CVROBOT-04 | `https://www.scenerepresentations.org/courses/2025/spring/advances-in-cv/` | The external 6.8300 site links recordings, slides, problem sets, projects, and course platforms. | External course assets need rights review before any extraction or local caching. | Medium |
| FONTES-CVROBOT-05 | `https://ocw.mit.edu/courses/6-4210-robotic-manipulation-fall-2022/` | MIT 6.4210 covers autonomous manipulation in unstructured environments, perception based on deep learning and 3D geometry, planning, kinematics, trajectory generation, collision-free planning, task-and-motion planning, uncertainty, dynamics, and control. | Provides the robotics/manipulation and embodied planning bridge for visual reasoning. | High |
| FONTES-CVROBOT-06 | `https://manipulation.csail.mit.edu/` | The external robotic manipulation textbook is authoritative for the course but outside the OCW-cleared surface. | Treat textbook pages, notebooks, figures, code, videos, and simulation assets as review-gated. | Medium |
| FONTES-CVROBOT-07 | `https://szeliski.org/Book/` | Szeliski's site identifies the second edition of Computer Vision: Algorithms and Applications and says the PDF may be downloaded for personal use but not reposted. | Use as a computer-vision textbook identity only until book/body reuse is reviewed. | High |
| FONTES-CVROBOT-08 | `https://cs231n.stanford.edu/` | Stanford CS231n covers deep learning for visual recognition, image classification, localization, detection, neural-network training, fine-tuning, assignments, and projects. | Adds neural visual recognition and practical model-training source identity. | High |
| FONTES-CVROBOT-09 | `https://docs.opencv.org/` | OpenCV exposes versioned Doxygen documentation and downloadable documentation archives. | Implementation docs and archives must be reviewed before extraction; identity is useful for future framework claims. | Medium |
| FONTES-CVROBOT-10 | `https://docs.ros.org/en/rolling/index.html` | ROS 2 describes itself as libraries and tools for building robot applications, including drivers, algorithms, developer tools, tutorials, concepts, package docs, and citations. | Adds robotics middleware identity while keeping package docs and examples boundary-checked. | High |
| FONTES-CVROBOT-11 | `https://moveit.ai/` | MoveIt presents motion planning, manipulation, kinematics, control, 3D perception, collision checking, task construction, and grasp generation for ROS. | Adds manipulation-framework identity for future robot planning/control claims. | High |
| FONTES-CVROBOT-12 | `https://drake.mit.edu/` | Drake describes a C++/Python toolbox for robot dynamics, control systems, optimization-based design/analysis, simulation, planning, control, examples, tutorials, and benchmarks. | Adds simulation/control/toolbox identity for embodied-agent and robotics validation claims. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate image formation, recognition, geometry, generative vision, embodied perception, manipulation, planning, control, and simulation claims; cite source identities for each. | Do not infer robot or vision capability from a model/demo without source, dataset, environment, and evaluation provenance. |
| Prototype behind boundary | PROOF / FLETCH | Prototype visual-source extraction, scene/asset labeling, robot-task provenance, and multimodal retrieval behind corpus, image/dataset, model, simulator, and hardware provenance diagnostics. | Do not cache or redistribute book bodies, lecture PDFs, slides, recordings, datasets, model weights, screenshots, meshes, notebooks, or package artifacts in FONTES. |
| Defer | FONTES | Promote external course sites, books, framework docs, source repositories, examples, datasets, demos, and releases only after rights review. | Do not treat external sites, generated docs, repository content, or media as OCW-cleared because they are linked from a course page. |
