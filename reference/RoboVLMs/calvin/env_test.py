import os

# BASE_DIR is the path to the RoboVLMs directory
path = "/mnt/vepfs01/output/multi_task_yangdejie/UniVLA/reference/RoboVLMs/calvin/dataset/task_ABC_D/validation"
import sys
sys.path.append("/mnt/vepfs01/output/multi_task_yangdejie/UniVLA/reference/RoboVLMs/calvin/calvin_env")
print(sys.path)
from calvin_env.envs.play_table_env import get_env
env = get_env(path, show_gui=False)
print(env.get_obs())
