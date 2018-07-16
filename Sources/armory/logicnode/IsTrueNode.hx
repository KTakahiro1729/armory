package armory.logicnode;

class IsTrueNode extends LogicNode {

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run(node:LogicNode) {

		var v1:Bool = inputs[1].get();
		if (v1) super.run(this);
	}
}
