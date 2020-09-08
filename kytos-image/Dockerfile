# Use kytos/nightly as base image
FROM kytos/nightly
# Install NApps
RUN pip install -e git+http://github.com/kytos/storehouse#egg=storehouse
RUN pip install -e git+http://github.com/kytos/of_core#egg=of_core
RUN pip install -e git+http://github.com/kytos/flow_manager#egg=flow_manager
RUN pip install -e git+http://github.com/kytos/topology#egg=topology
RUN pip install -e git+http://github.com/kytos/of_lldp#egg=of_lldp
RUN pip install -e git+http://github.com/kytos/pathfinder#egg=pathfinder

# The following NApps do not work with this install method
# RUN pip install -e git+http://github.com/kytos/mef_eline#egg=kytos_mef_eline
# RUN pip install -e git+http://github.com/kytos/maintenance#egg=kytos-maintenance