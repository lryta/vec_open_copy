import subprocess
import statistics
N = 30


def print_stat(times):
    print('----------------')
    for k, v in times.items():
        print(k)
        print('Mean:', statistics.mean(v))
        print('Median:', statistics.median(v))
        print('Max:', max(v))
        print('Min:', min(v))

print('Original open')
times = {'real':[], 'sys': [], 'user': []}
for i in range(N):
    subprocess.call(['rm', '-rf', '/tmp/test_1'])
    out = subprocess.getoutput('/usr/bin/time -f %e_%S_%U ../orig_open/src/cp -r /tmp/test /tmp/test_1')
    realtime, systime, usertime = out.split('_')
    times['real'].append(float(realtime))
    times['sys'].append(float(systime))
    times['user'].append(float(usertime))
print_stat(times)

print('Vec open')
times = {'real':[], 'sys': [], 'user': []}
for i in range(N):
    subprocess.call(['rm', '-rf', '/tmp/test_2'])
    out = subprocess.getoutput('/usr/bin/time -f %e_%S_%U src/cp -r /tmp/test /tmp/test_2')
    realtime, systime, usertime = out.split('_')
    times['real'].append(float(realtime))
    times['sys'].append(float(systime))
    times['user'].append(float(usertime))
print_stat(times)


