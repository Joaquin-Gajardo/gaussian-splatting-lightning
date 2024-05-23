import os
import glob
import torch
from internal.models.gaussian_model_simplified import GaussianModelSimplified
from internal.renderers.vanilla_renderer import VanillaRenderer


class GaussianModelLoader:
    @staticmethod
    def search_load_file(model_path: str) -> str:
        # if a directory path is provided, auto search ply
        if os.path.isdir(model_path) is False:
            return model_path
        previous_point_cloud_iteration = -1
        for i in glob.glob(os.path.join(model_path, "point_cloud", "iteration_*")):
            try:
                point_cloud_iteration = int(os.path.basename(i).replace("iteration_", ""))
            except Exception as err:
                print("error occurred when parsing iteration from {}: {}".format(i, err))
                continue

            if point_cloud_iteration > previous_point_cloud_iteration:
                previous_point_cloud_iteration = point_cloud_iteration
                load_from = os.path.join(i, "point_cloud.ply")

        assert load_from is not None, "no point cloud can be found"
        print("returning load: {}".format(load_from))
        return load_from

    @staticmethod
    def initialize_simplified_model_from_point_cloud(point_cloud_path: str, sh_degree, device):
        model = GaussianModelSimplified.construct_from_ply(ply_path=point_cloud_path, sh_degree=sh_degree, device=device)
        renderer = VanillaRenderer()
        renderer.setup(stage="val")
        renderer = renderer.to(device)

        return model, renderer

    @classmethod
    def search_and_load(cls, model_path: str, sh_degree, device):
        load_from = cls.search_load_file(model_path)
        if load_from.endswith(".ply"):
            model, renderer = cls.initialize_simplified_model_from_point_cloud(load_from, sh_degree=sh_degree, device=device)
        else:
            raise ValueError("unsupported file {}".format(load_from))

        return model, renderer
