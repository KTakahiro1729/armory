package armory.logicnode;

import iron.object.Object;

class SetActionSpeedNode extends LogicNode {

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run(node:LogicNode) {
		var object:Object = inputs[1].get();
		var speed:Float = inputs[2].get();
		
		if (object == null) return;
		var animation = object.animation;
		if (animation == null) animation = object.getParentArmature(object.name);

		animation.speed = speed;

		super.run(this);
	}
}
