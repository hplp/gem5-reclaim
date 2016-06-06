#!/usr/local/bin/python3.3
import subprocess as sproc
import shlex


class SimManager:

    def __init__(self):
        self.procs = dict()

    def StartTool(self, name, command, cwd='./', stdin=None, stdout=None, stderr=None):
        if name in self.procs:
            print('Process with name: ' + name + ', already exists!')
            return None
        args = shlex.split(command)
        s = sproc.Popen(args, cwd=cwd, stdin=stdin, stdout=stdout, stderr=stderr)
        self.procs[name] = s
        return s

    def StopTool(self, proc):
        self.proc.terminate()
        self.proc.wait()
        return self.proc.returncode

    def GetTool(self, pname):
        if pname not in self.procs:
            print('No process with name: ' + pname + ' found!')
            return None
        return self.procs[pname]

    def WaitAllTools(self):
        for name in self.procs:
            self.procs[name].wait()
        return self.GetAllRetCodes()

    def StopAllTools(self, blocking=False):
        for name in self.procs:
            self.procs[name].terminate()
        if blocking is True:
            return self.WaitAllTools()

    def GetAllRetCodes(self):
        returncodes = dict()
        for name in self.procs:
            returncodes[name] = self.procs[name].returncode
        return returncodes
