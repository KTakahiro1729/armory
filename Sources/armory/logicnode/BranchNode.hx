package armory.logicnode;

class BranchNode extends LogicNode {

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run(node:LogicNode) {
		var b:Bool = inputs[1].get();
		b ? runOutputs(0) : runOutputs(1);
	}
}
