FROM jupyter/base-notebook:python-3.10.9

COPY --chown=${NB_UID}:${NB_GID} requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

CMD ["start.sh", "jupyter", "lab"]

