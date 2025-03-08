import os
import subprocess

# 编译 C 代码的 Python 脚本

def compile_source(source_files, include_dirs, output_dir):
    """
    编译源文件，生成目标文件（.o）。
    
    参数：
    - source_files: 需要编译的 C 源文件列表。
    - include_dirs: 头文件目录列表（-I 参数）。
    - output_dir: 目标文件存放目录。
    
    返回：
    - object_files: 生成的 .o 目标文件路径列表。
    """
    os.makedirs(output_dir, exist_ok=True)  # 确保输出目录存在
    object_files = []  # 存储生成的 .o 文件
    
    for src in source_files:
        obj = os.path.join(output_dir, os.path.basename(src).replace('.c', '.o'))  # 生成 .o 文件路径
        cmd = ["gcc", "-c", "-o", obj, src] + ["-I" + inc for inc in include_dirs]  # 生成 GCC 命令
        subprocess.run(cmd, check=True)  # 执行编译命令
        object_files.append(obj)  # 记录生成的 .o 文件路径
    
    return object_files

def link_executable(output_exe, object_files):
    """
    将目标文件（.o）链接为可执行文件。
    
    参数：
    - output_exe: 生成的可执行文件路径。
    - object_files: 需要链接的 .o 目标文件列表。
    """
    os.makedirs(os.path.dirname(output_exe), exist_ok=True)  # 确保可执行文件存放目录存在
    cmd = ["gcc", "-o", output_exe] + object_files  # 生成 GCC 链接命令
    subprocess.run(cmd, check=True)  # 执行链接命令

def main():
    """
    主函数：
    1. 编译 C 源文件，生成 .o 目标文件。
    2. 链接目标文件，生成可执行文件。
    3. 运行最终生成的可执行文件。
    """
    source_files = ["./Driver/src/mat.c", "./Driver/src/add.c", "app/main.c"]  # C 源文件列表
    include_dirs = ["./Driver/inc"]  # 头文件目录
    output_dir = "build"  # 目标文件存放目录
    executable = "bin/test"  # 生成的可执行文件路径
    
    object_files = compile_source(source_files, include_dirs, output_dir)  # 编译 C 代码
    link_executable(executable, object_files)  # 链接可执行文件
    
    print("Compilation and linking successful.")  # 提示编译完成
    
    # 运行可执行文件
    subprocess.run(["./" + executable], check=True)

if __name__ == "__main__":
    main()  # 执行主函数