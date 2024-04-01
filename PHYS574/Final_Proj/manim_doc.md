# Manim Slides Documentation

Documenting manim-slides cause it was kind of a pain to install

## Setup
Create the python environment
```
python -m venv manim-env # create python env specifically for manim
source manim-env/bin/activate # activate said env
pip install manim
pip install manim-slides
```

that wasn't quite enough because it wasn't finding qt keybindings. What fixed it was:

```
pip install 'manim-slides[pyside6]'
```
## Usage:

Here's an example:

```python
from manim import *  # or: from manimlib import *
from manim_slides import Slide

class BasicExample(Slide):
    def construct(self):
        circle = Circle(radius=3, color=BLUE)
        dot = Dot()

        self.play(GrowFromCenter(circle))
        self.next_slide()  # Waits user to press continue to go to the next slide

        self.next_slide(loop=True)  # Start loop
        self.play(MoveAlongPath(dot, circle), run_time=2, rate_func=linear)
        self.next_slide()  # This will start a new non-looping slide

        self.play(dot.animate.move_to(ORIGIN))
```
call that example.py:
```
vim example.py # create the file
manim-slides render example.py BasicExample # render BasicExample scene
manim-slides BasicExample # run the interactive scene
```



